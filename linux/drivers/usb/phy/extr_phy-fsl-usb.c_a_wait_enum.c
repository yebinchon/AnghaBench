
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* otg; } ;
struct TYPE_8__ {int fsm; TYPE_3__ phy; } ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int b_hnp_enable; } ;


 int VDBG (char*) ;
 int a_wait_enum_tmr ;
 int fsl_otg_add_timer (int *,int ) ;
 TYPE_4__* fsl_otg_dev ;
 int otg_statemachine (int *) ;

void a_wait_enum(unsigned long foo)
{
 VDBG("a_wait_enum timeout\n");
 if (!fsl_otg_dev->phy.otg->host->b_hnp_enable)
  fsl_otg_add_timer(&fsl_otg_dev->fsm, a_wait_enum_tmr);
 else
  otg_statemachine(&fsl_otg_dev->fsm);
}
