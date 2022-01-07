
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_state {int dummy; } ;
struct pinctrl {struct pinctrl_state* state; } ;


 int pinctrl_commit_state (struct pinctrl*,struct pinctrl_state*) ;

int pinctrl_select_state(struct pinctrl *p, struct pinctrl_state *state)
{
 if (p->state == state)
  return 0;

 return pinctrl_commit_state(p, state);
}
