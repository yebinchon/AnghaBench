
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int rst_work; int wq; } ;
struct Scsi_Host {int dummy; } ;


 int EOPNOTSUPP ;
 int SCSI_ADAPTER_RESET ;
 int queue_work (int ,int *) ;
 struct hisi_hba* shost_priv (struct Scsi_Host*) ;

int hisi_sas_host_reset(struct Scsi_Host *shost, int reset_type)
{
 struct hisi_hba *hisi_hba = shost_priv(shost);

 if (reset_type != SCSI_ADAPTER_RESET)
  return -EOPNOTSUPP;

 queue_work(hisi_hba->wq, &hisi_hba->rst_work);

 return 0;
}
