
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb10x_pinfuncgrp {size_t port; scalar_t__ mode; int pincnt; int * pins; } ;
struct tb10x_pinctrl {int mutex; TYPE_1__* ports; int gpios; struct tb10x_pinfuncgrp* pingroups; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ count; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int tb10x_pinctrl_set_config (struct tb10x_pinctrl*,size_t,scalar_t__) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int tb10x_pctl_set_mux(struct pinctrl_dev *pctl,
   unsigned func_selector, unsigned group_selector)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);
 const struct tb10x_pinfuncgrp *grp = &state->pingroups[group_selector];
 int i;

 if (grp->port < 0)
  return 0;

 mutex_lock(&state->mutex);





 if (state->ports[grp->port].count
   && (state->ports[grp->port].mode != grp->mode)) {
  mutex_unlock(&state->mutex);
  return -EBUSY;
 }





 for (i = 0; i < grp->pincnt; i++)
  if (test_bit(grp->pins[i], state->gpios)) {
   mutex_unlock(&state->mutex);
   return -EBUSY;
  }

 tb10x_pinctrl_set_config(state, grp->port, grp->mode);

 state->ports[grp->port].count++;

 mutex_unlock(&state->mutex);

 return 0;
}
