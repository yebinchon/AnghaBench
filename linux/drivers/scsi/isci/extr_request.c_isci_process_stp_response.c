
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_status_struct {int buf_valid_size; int resp; int stat; int * buf; } ;
struct sas_task {struct task_status_struct task_status; } ;
struct dev_to_host_fis {int status; } ;
struct ata_task_resp {int frame_len; int ending_fis; } ;


 int SAM_STAT_GOOD ;
 int SAS_PROTO_RESPONSE ;
 int SAS_TASK_COMPLETE ;
 scalar_t__ ac_err_mask (int ) ;
 int memcpy (int ,struct dev_to_host_fis*,int) ;

__attribute__((used)) static void isci_process_stp_response(struct sas_task *task, struct dev_to_host_fis *fis)
{
 struct task_status_struct *ts = &task->task_status;
 struct ata_task_resp *resp = (void *)&ts->buf[0];

 resp->frame_len = sizeof(*fis);
 memcpy(resp->ending_fis, fis, sizeof(*fis));
 ts->buf_valid_size = sizeof(*resp);


 if (ac_err_mask(fis->status))
  ts->stat = SAS_PROTO_RESPONSE;
 else
  ts->stat = SAM_STAT_GOOD;

 ts->resp = SAS_TASK_COMPLETE;
}
