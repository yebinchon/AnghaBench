
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb10x_pinfuncgrp {unsigned int mode; int port; int pincnt; unsigned int* pins; scalar_t__ isgpio; } ;
struct tb10x_pinctrl {int pinfuncgrpcnt; int mutex; int gpios; TYPE_1__* ports; struct tb10x_pinfuncgrp* pingroups; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int mode; scalar_t__ count; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tb10x_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int set_bit (unsigned int,int ) ;
 int tb10x_pinctrl_set_config (struct tb10x_pinctrl*,int,int) ;

__attribute__((used)) static int tb10x_gpio_request_enable(struct pinctrl_dev *pctl,
     struct pinctrl_gpio_range *range,
     unsigned pin)
{
 struct tb10x_pinctrl *state = pinctrl_dev_get_drvdata(pctl);
 int muxport = -1;
 int muxmode = -1;
 int i;

 mutex_lock(&state->mutex);







 for (i = 0; i < state->pinfuncgrpcnt; i++) {
  const struct tb10x_pinfuncgrp *pfg = &state->pingroups[i];
  unsigned int mode = pfg->mode;
  int j, port = pfg->port;





  if (port < 0)
   continue;

  for (j = 0; j < pfg->pincnt; j++) {
   if (pin == pfg->pins[j]) {
    if (pfg->isgpio) {




     muxport = port;
     muxmode = mode;
    } else if (state->ports[port].count
     && (state->ports[port].mode == mode)) {




     mutex_unlock(&state->mutex);
     return -EBUSY;
    }
    break;
   }
  }
 }







 set_bit(pin, state->gpios);







 if (muxport >= 0)
  tb10x_pinctrl_set_config(state, muxport, muxmode);

 mutex_unlock(&state->mutex);

 return 0;
}
