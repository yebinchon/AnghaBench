
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int force_ioa_reset; struct pmcraid_cmd* reset_cmd; int ioa_shutdown_type; int host; int ioa_reset_in_progress; } ;
struct pmcraid_cmd {int dummy; } ;


 int PMC_DEVICE_EVENT_RESET_START ;
 int SHUTDOWN_NONE ;
 int pmcraid_err (char*) ;
 struct pmcraid_cmd* pmcraid_get_free_cmd (struct pmcraid_instance*) ;
 int pmcraid_ioa_reset (struct pmcraid_cmd*) ;
 int pmcraid_notify_ioastate (struct pmcraid_instance*,int ) ;
 int scsi_block_requests (int ) ;

__attribute__((used)) static void pmcraid_initiate_reset(struct pmcraid_instance *pinstance)
{
 struct pmcraid_cmd *cmd;




 if (!pinstance->ioa_reset_in_progress) {
  scsi_block_requests(pinstance->host);
  cmd = pmcraid_get_free_cmd(pinstance);

  if (cmd == ((void*)0)) {
   pmcraid_err("no cmnd blocks for initiate_reset\n");
   return;
  }

  pinstance->ioa_shutdown_type = SHUTDOWN_NONE;
  pinstance->reset_cmd = cmd;
  pinstance->force_ioa_reset = 1;
  pmcraid_notify_ioastate(pinstance,
     PMC_DEVICE_EVENT_RESET_START);
  pmcraid_ioa_reset(cmd);
 }
}
