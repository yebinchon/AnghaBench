
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sx150x_pinctrl {TYPE_2__* data; } ;
struct TYPE_4__ {unsigned int npins; scalar_t__ model; TYPE_1__* pins; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ SX150X_789 ;
 int strcmp (int ,char*) ;

__attribute__((used)) static bool sx150x_pin_is_oscio(struct sx150x_pinctrl *pctl, unsigned int pin)
{
 if (pin >= pctl->data->npins)
  return 0;


 if (pctl->data->model != SX150X_789)
  return 0;

 return !strcmp(pctl->data->pins[pin].name, "oscio");
}
