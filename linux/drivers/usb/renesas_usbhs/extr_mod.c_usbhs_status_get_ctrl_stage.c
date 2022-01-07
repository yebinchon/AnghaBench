
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_irq_state {scalar_t__ intsts0; } ;


 int CTSQ_MASK ;

int usbhs_status_get_ctrl_stage(struct usbhs_irq_state *irq_state)
{
 return (int)irq_state->intsts0 & CTSQ_MASK;
}
