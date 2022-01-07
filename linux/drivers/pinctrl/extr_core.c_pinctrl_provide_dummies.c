
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pinctrl_dummy_state ;

void pinctrl_provide_dummies(void)
{
 pinctrl_dummy_state = 1;
}
