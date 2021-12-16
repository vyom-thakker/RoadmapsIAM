
variable t;

t.lo=-2;
t.up=10;

equation expeq;
expeq.. exp(-8.5*t)=g=10;

variable objval;
equation objcons;
objcons.. objval=e=t;


Model trial_exp /ALL/;
Option NLP=BARON;

Solve trial_exp using NLP maximizing objval;

Display t.l;
