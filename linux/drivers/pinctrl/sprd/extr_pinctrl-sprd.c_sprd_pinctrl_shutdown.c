
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct pinctrl_state {int dummy; } ;
typedef struct pinctrl_state pinctrl ;


 scalar_t__ IS_ERR (struct pinctrl_state*) ;
 struct pinctrl_state* devm_pinctrl_get (int *) ;
 struct pinctrl_state* pinctrl_lookup_state (struct pinctrl_state*,char*) ;
 int pinctrl_select_state (struct pinctrl_state*,struct pinctrl_state*) ;

void sprd_pinctrl_shutdown(struct platform_device *pdev)
{
 struct pinctrl *pinctl;
 struct pinctrl_state *state;

 pinctl = devm_pinctrl_get(&pdev->dev);
 if (IS_ERR(pinctl))
  return;
 state = pinctrl_lookup_state(pinctl, "shutdown");
 if (IS_ERR(state))
  return;
 pinctrl_select_state(pinctl, state);
}
