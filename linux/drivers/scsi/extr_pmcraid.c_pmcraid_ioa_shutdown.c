
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pmcraid_cmd {int drv_inst; TYPE_3__* ioa_cb; } ;
struct TYPE_5__ {int response_handle; int * cdb; int resource_handle; int request_type; } ;
struct TYPE_4__ {int ioasc; } ;
struct TYPE_6__ {TYPE_2__ ioarcb; TYPE_1__ ioasa; } ;


 int PMCRAID_IOA_RES_HANDLE ;
 int PMCRAID_IOA_SHUTDOWN ;
 int PMCRAID_SHUTDOWN_NORMAL ;
 int PMCRAID_SHUTDOWN_TIMEOUT ;
 int PMC_DEVICE_EVENT_SHUTDOWN_START ;
 int REQ_TYPE_IOACMD ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int pmcraid_info (char*,int ,...) ;
 int pmcraid_ioa_shutdown_done ;
 int pmcraid_notify_ioastate (int ,int ) ;
 int pmcraid_reinit_cmdblk (struct pmcraid_cmd*) ;
 int pmcraid_send_cmd (struct pmcraid_cmd*,int ,int ,int ) ;
 int pmcraid_timeout_handler ;

__attribute__((used)) static void pmcraid_ioa_shutdown(struct pmcraid_cmd *cmd)
{
 pmcraid_info("response for Cancel CCN CDB[0] = %x ioasc = %x\n",
       cmd->ioa_cb->ioarcb.cdb[0],
       le32_to_cpu(cmd->ioa_cb->ioasa.ioasc));




 pmcraid_reinit_cmdblk(cmd);
 cmd->ioa_cb->ioarcb.request_type = REQ_TYPE_IOACMD;
 cmd->ioa_cb->ioarcb.resource_handle =
  cpu_to_le32(PMCRAID_IOA_RES_HANDLE);
 cmd->ioa_cb->ioarcb.cdb[0] = PMCRAID_IOA_SHUTDOWN;
 cmd->ioa_cb->ioarcb.cdb[1] = PMCRAID_SHUTDOWN_NORMAL;


 pmcraid_info("firing normal shutdown command (%d) to IOA\n",
       le32_to_cpu(cmd->ioa_cb->ioarcb.response_handle));

 pmcraid_notify_ioastate(cmd->drv_inst, PMC_DEVICE_EVENT_SHUTDOWN_START);

 pmcraid_send_cmd(cmd, pmcraid_ioa_shutdown_done,
    PMCRAID_SHUTDOWN_TIMEOUT,
    pmcraid_timeout_handler);
}
