
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct otg_fsm {int dummy; } ;
struct TYPE_2__ {int otgsc; } ;


 int OTGSC_HA_DATA_PULSE ;
 int OTGSC_INTSTS_MASK ;
 int b_data_pulse_tmr ;
 int fsl_otg_add_timer (struct otg_fsm*,int ) ;
 int fsl_otg_loc_conn (int) ;
 int fsl_readl (int *) ;
 int fsl_writel (int,int *) ;
 scalar_t__ srp_wait_done ;
 TYPE_1__* usb_dr_regs ;

void fsl_otg_start_pulse(struct otg_fsm *fsm)
{
 u32 tmp;

 srp_wait_done = 0;





 fsl_otg_loc_conn(1);


 fsl_otg_add_timer(fsm, b_data_pulse_tmr);
}
