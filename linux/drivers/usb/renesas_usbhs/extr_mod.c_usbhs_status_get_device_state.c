
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_irq_state {int intsts0; } ;





 int DVSQ_MASK ;
 int EIO ;


int usbhs_status_get_device_state(struct usbhs_irq_state *irq_state)
{
 int state = irq_state->intsts0 & DVSQ_MASK;

 switch (state) {
 case 128:
 case 129:
 case 131:
 case 130:
  return state;
 }

 return -EIO;
}
