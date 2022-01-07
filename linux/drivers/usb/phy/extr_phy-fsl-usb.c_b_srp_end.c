
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int b_srp_done; scalar_t__ b_sess_vld; } ;
struct TYPE_6__ {TYPE_1__* otg; } ;
struct TYPE_8__ {TYPE_3__ fsm; TYPE_2__ phy; } ;
struct TYPE_5__ {scalar_t__ state; } ;


 scalar_t__ OTG_STATE_B_SRP_INIT ;
 TYPE_4__* fsl_otg_dev ;
 int fsl_otg_dischrg_vbus (int ) ;
 int srp_wait_done ;

void b_srp_end(unsigned long foo)
{
 fsl_otg_dischrg_vbus(0);
 srp_wait_done = 1;

 if ((fsl_otg_dev->phy.otg->state == OTG_STATE_B_SRP_INIT) &&
     fsl_otg_dev->fsm.b_sess_vld)
  fsl_otg_dev->fsm.b_srp_done = 1;
}
