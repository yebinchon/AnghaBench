
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_phy {int * works; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {int wq; } ;
typedef enum hisi_sas_phy_event { ____Placeholder_hisi_sas_phy_event } hisi_sas_phy_event ;


 int HISI_PHYES_NUM ;
 scalar_t__ WARN_ON (int) ;
 int queue_work (int ,int *) ;

bool hisi_sas_notify_phy_event(struct hisi_sas_phy *phy,
    enum hisi_sas_phy_event event)
{
 struct hisi_hba *hisi_hba = phy->hisi_hba;

 if (WARN_ON(event >= HISI_PHYES_NUM))
  return 0;

 return queue_work(hisi_hba->wq, &phy->works[event]);
}
