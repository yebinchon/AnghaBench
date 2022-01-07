
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_cq {int tasklet; } ;
struct hisi_hba {int cq_nvecs; struct hisi_sas_cq* cq; } ;


 int tasklet_kill (int *) ;

void hisi_sas_kill_tasklets(struct hisi_hba *hisi_hba)
{
 int i;

 for (i = 0; i < hisi_hba->cq_nvecs; i++) {
  struct hisi_sas_cq *cq = &hisi_hba->cq[i];

  tasklet_kill(&cq->tasklet);
 }
}
