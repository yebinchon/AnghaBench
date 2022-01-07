
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_12__ {int ignore; } ;
struct TYPE_11__ {int * cmd; scalar_t__ hcam; } ;
struct pmcraid_instance {int timestamp_error; TYPE_7__* pdev; TYPE_6__* host; TYPE_5__ ccn; TYPE_4__ ldn; } ;
struct TYPE_10__ {int fd_ioasc; } ;
struct pmcraid_hcam_ldn {TYPE_3__ error_log; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_14__ {int dev; } ;
struct TYPE_13__ {int host_lock; } ;
struct TYPE_8__ {int ioasc; } ;
struct TYPE_9__ {TYPE_1__ ioasa; } ;


 int PMCRAID_HCAM_CODE_LOG_DATA ;
 scalar_t__ PMCRAID_IOASC_IOA_WAS_RESET ;
 scalar_t__ PMCRAID_IOASC_NR_IOA_RESET_REQUIRED ;
 scalar_t__ PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC ;
 int atomic_read (int *) ;
 int dev_info (int *,char*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pmcraid_disable_aen ;
 int pmcraid_handle_error_log (struct pmcraid_instance*) ;
 struct pmcraid_cmd* pmcraid_init_hcam (struct pmcraid_instance*,int ) ;
 int pmcraid_initiate_reset (struct pmcraid_instance*) ;
 int pmcraid_notify_ldn (struct pmcraid_instance*) ;
 int pmcraid_return_cmd (struct pmcraid_cmd*) ;
 int pmcraid_send_hcam_cmd (struct pmcraid_cmd*) ;
 int pmcraid_set_timestamp (struct pmcraid_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void pmcraid_process_ldn(struct pmcraid_cmd *cmd)
{
 struct pmcraid_instance *pinstance = cmd->drv_inst;
 struct pmcraid_hcam_ldn *ldn_hcam =
   (struct pmcraid_hcam_ldn *)pinstance->ldn.hcam;
 u32 ioasc = le32_to_cpu(cmd->ioa_cb->ioasa.ioasc);
 u32 fd_ioasc = le32_to_cpu(ldn_hcam->error_log.fd_ioasc);
 unsigned long lock_flags;


 pinstance->ldn.cmd = ((void*)0);
 pmcraid_return_cmd(cmd);





 if (ioasc == PMCRAID_IOASC_IOA_WAS_RESET ||
     atomic_read(&pinstance->ccn.ignore) == 1) {
  return;
 } else if (!ioasc) {
  pmcraid_handle_error_log(pinstance);
  if (fd_ioasc == PMCRAID_IOASC_NR_IOA_RESET_REQUIRED) {
   spin_lock_irqsave(pinstance->host->host_lock,
       lock_flags);
   pmcraid_initiate_reset(pinstance);
   spin_unlock_irqrestore(pinstance->host->host_lock,
            lock_flags);
   return;
  }
  if (fd_ioasc == PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC) {
   pinstance->timestamp_error = 1;
   pmcraid_set_timestamp(cmd);
  }
 } else {
  dev_info(&pinstance->pdev->dev,
   "Host RCB(LDN) failed with IOASC: 0x%08X\n", ioasc);
 }

 if (!pmcraid_disable_aen)
  pmcraid_notify_ldn(pinstance);

 cmd = pmcraid_init_hcam(pinstance, PMCRAID_HCAM_CODE_LOG_DATA);
 if (cmd)
  pmcraid_send_hcam_cmd(cmd);
}
