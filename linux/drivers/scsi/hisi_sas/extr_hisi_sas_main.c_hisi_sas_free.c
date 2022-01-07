
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_phy {int timer; } ;
struct hisi_hba {int n_phy; scalar_t__ wq; struct hisi_sas_phy* phy; } ;


 int del_timer_sync (int *) ;
 int destroy_workqueue (scalar_t__) ;

void hisi_sas_free(struct hisi_hba *hisi_hba)
{
 int i;

 for (i = 0; i < hisi_hba->n_phy; i++) {
  struct hisi_sas_phy *phy = &hisi_hba->phy[i];

  del_timer_sync(&phy->timer);
 }

 if (hisi_hba->wq)
  destroy_workqueue(hisi_hba->wq);
}
