
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsm; } ;


 int b_vbus_pulse_tmr ;
 int fsl_otg_add_timer (int *,int ) ;
 int fsl_otg_chrg_vbus (int *,int) ;
 TYPE_1__* fsl_otg_dev ;
 scalar_t__ srp_wait_done ;

void fsl_otg_pulse_vbus(void)
{
 srp_wait_done = 0;
 fsl_otg_chrg_vbus(&fsl_otg_dev->fsm, 1);

 fsl_otg_add_timer(&fsl_otg_dev->fsm, b_vbus_pulse_tmr);
}
