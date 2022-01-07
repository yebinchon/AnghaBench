
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct task_status_struct {int buf_valid_size; scalar_t__ buf; } ;
struct sas_task {struct task_status_struct task_status; } ;
struct hisi_sas_status_buffer {int * iu; } ;
struct hisi_sas_slot {int dummy; } ;
struct dev_to_host_fis {int dummy; } ;
struct ata_task_resp {int frame_len; int * ending_fis; } ;


 struct hisi_sas_status_buffer* hisi_sas_status_buf_addr_mem (struct hisi_sas_slot*) ;
 int memcpy (int *,struct dev_to_host_fis*,int) ;

void hisi_sas_sata_done(struct sas_task *task,
       struct hisi_sas_slot *slot)
{
 struct task_status_struct *ts = &task->task_status;
 struct ata_task_resp *resp = (struct ata_task_resp *)ts->buf;
 struct hisi_sas_status_buffer *status_buf =
   hisi_sas_status_buf_addr_mem(slot);
 u8 *iu = &status_buf->iu[0];
 struct dev_to_host_fis *d2h = (struct dev_to_host_fis *)iu;

 resp->frame_len = sizeof(struct dev_to_host_fis);
 memcpy(&resp->ending_fis[0], d2h, sizeof(struct dev_to_host_fis));

 ts->buf_valid_size = sizeof(*resp);
}
