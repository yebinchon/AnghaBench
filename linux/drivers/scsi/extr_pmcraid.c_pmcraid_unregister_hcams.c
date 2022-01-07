
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ignore; } ;
struct TYPE_3__ {int ignore; } ;
struct pmcraid_instance {int ioa_state; scalar_t__ ioa_unit_check; scalar_t__ force_ioa_reset; int ioa_bringdown; TYPE_2__ ldn; TYPE_1__ ccn; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;


 int IOA_STATE_IN_RESET_ALERT ;
 int atomic_set (int *,int) ;
 int pmcraid_cancel_ldn (struct pmcraid_cmd*) ;
 int pmcraid_reset_alert (struct pmcraid_cmd*) ;

__attribute__((used)) static void pmcraid_unregister_hcams(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;






 atomic_set(&pinstance->ccn.ignore, 1);
 atomic_set(&pinstance->ldn.ignore, 1);





 if ((pinstance->force_ioa_reset && !pinstance->ioa_bringdown) ||
      pinstance->ioa_unit_check) {
  pinstance->force_ioa_reset = 0;
  pinstance->ioa_unit_check = 0;
  pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
  pmcraid_reset_alert(cmd);
  return;
 }





 pmcraid_cancel_ldn(cmd);
}
