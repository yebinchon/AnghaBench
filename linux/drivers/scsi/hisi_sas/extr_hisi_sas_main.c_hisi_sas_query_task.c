
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct scsi_lun {int scsi_lun; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct sas_task {int task_proto; struct hisi_sas_slot* lldd_task; struct domain_device* dev; struct scsi_cmnd* uldd_task; } ;
struct hisi_sas_tmf_task {int tag_of_task_to_be_managed; int tmf; } ;
struct hisi_sas_slot {int idx; } ;
struct domain_device {int dummy; } ;
struct TYPE_2__ {int lun; } ;


 int SAS_PROTOCOL_SSP ;
 int TMF_QUERY_TASK ;



 int hisi_sas_debug_issue_ssp_tmf (struct domain_device*,int ,struct hisi_sas_tmf_task*) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;

__attribute__((used)) static int hisi_sas_query_task(struct sas_task *task)
{
 struct scsi_lun lun;
 struct hisi_sas_tmf_task tmf_task;
 int rc = 129;

 if (task->lldd_task && task->task_proto & SAS_PROTOCOL_SSP) {
  struct scsi_cmnd *cmnd = task->uldd_task;
  struct domain_device *device = task->dev;
  struct hisi_sas_slot *slot = task->lldd_task;
  u32 tag = slot->idx;

  int_to_scsilun(cmnd->device->lun, &lun);
  tmf_task.tmf = TMF_QUERY_TASK;
  tmf_task.tag_of_task_to_be_managed = tag;

  rc = hisi_sas_debug_issue_ssp_tmf(device,
        lun.scsi_lun,
        &tmf_task);
  switch (rc) {

  case 128:

  case 129:
  case 130:
   break;
  default:
   rc = 129;
   break;
  }
 }
 return rc;
}
