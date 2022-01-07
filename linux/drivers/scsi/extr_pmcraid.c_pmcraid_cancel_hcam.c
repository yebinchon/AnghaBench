
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct pmcraid_hostrcb {int * cmd; } ;
struct pmcraid_instance {struct pmcraid_hostrcb ccn; struct pmcraid_hostrcb ldn; } ;
struct pmcraid_cmd {struct pmcraid_instance* drv_inst; } ;


 scalar_t__ PMCRAID_HCAM_CODE_LOG_DATA ;
 int PMCRAID_INTERNAL_TIMEOUT ;
 int pmcraid_prepare_cancel_cmd (struct pmcraid_cmd*,int *) ;
 int pmcraid_send_cmd (struct pmcraid_cmd*,void (*) (struct pmcraid_cmd*),int ,int ) ;
 int pmcraid_timeout_handler ;

__attribute__((used)) static void pmcraid_cancel_hcam(
 struct pmcraid_cmd *cmd,
 u8 type,
 void (*cmd_done) (struct pmcraid_cmd *)
)
{
 struct pmcraid_instance *pinstance;
 struct pmcraid_hostrcb *hcam;

 pinstance = cmd->drv_inst;
 hcam = (type == PMCRAID_HCAM_CODE_LOG_DATA) ?
  &pinstance->ldn : &pinstance->ccn;




 if (hcam->cmd == ((void*)0))
  return;

 pmcraid_prepare_cancel_cmd(cmd, hcam->cmd);




 pmcraid_send_cmd(cmd, cmd_done,
    PMCRAID_INTERNAL_TIMEOUT,
    pmcraid_timeout_handler);
}
