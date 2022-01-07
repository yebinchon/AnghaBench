
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_status_struct {int buf_valid_size; scalar_t__ buf; } ;
struct sas_task {struct task_status_struct task_status; TYPE_1__* dev; } ;
struct mvs_info {int dummy; } ;
struct mvs_device {int taskfileset; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_task_resp {int frame_len; int * ending_fis; } ;
struct TYPE_2__ {struct mvs_device* lldd_dev; } ;


 int CMD_ISS_STPD ;
 int SAM_STAT_GOOD ;
 int SAS_OPEN_REJECT ;
 int SAS_PROTO_RESPONSE ;
 int SATA_RECEIVED_D2H_FIS (int ) ;
 int memcpy (int *,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mvs_sata_done(struct mvs_info *mvi, struct sas_task *task,
   u32 slot_idx, int err)
{
 struct mvs_device *mvi_dev = task->dev->lldd_dev;
 struct task_status_struct *tstat = &task->task_status;
 struct ata_task_resp *resp = (struct ata_task_resp *)tstat->buf;
 int stat = SAM_STAT_GOOD;


 resp->frame_len = sizeof(struct dev_to_host_fis);
 memcpy(&resp->ending_fis[0],
        SATA_RECEIVED_D2H_FIS(mvi_dev->taskfileset),
        sizeof(struct dev_to_host_fis));
 tstat->buf_valid_size = sizeof(*resp);
 if (unlikely(err)) {
  if (unlikely(err & CMD_ISS_STPD))
   stat = SAS_OPEN_REJECT;
  else
   stat = SAS_PROTO_RESPONSE;
       }

 return stat;
}
