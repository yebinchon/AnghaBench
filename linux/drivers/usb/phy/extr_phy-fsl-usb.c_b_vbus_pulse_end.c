
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fsm; } ;


 int b_srp_wait_tmr ;
 int fsl_otg_add_timer (int *,int ) ;
 int fsl_otg_chrg_vbus (int *,int ) ;
 TYPE_1__* fsl_otg_dev ;
 int fsl_otg_dischrg_vbus (int) ;

void b_vbus_pulse_end(unsigned long foo)
{
 fsl_otg_chrg_vbus(&fsl_otg_dev->fsm, 0);






 fsl_otg_dischrg_vbus(1);
 fsl_otg_add_timer(&fsl_otg_dev->fsm, b_srp_wait_tmr);
}
