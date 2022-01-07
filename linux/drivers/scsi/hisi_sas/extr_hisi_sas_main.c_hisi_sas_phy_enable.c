
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_phy {int negotiated_linkrate; } ;
struct asd_sas_phy {struct sas_phy* phy; } ;
struct hisi_sas_phy {int enable; int lock; struct asd_sas_phy sas_phy; } ;
struct hisi_hba {TYPE_1__* hw; struct hisi_sas_phy* phy; } ;
struct TYPE_2__ {int (* phy_disable ) (struct hisi_hba*,int) ;int (* phy_start ) (struct hisi_hba*,int) ;} ;


 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PHY_DISABLED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct hisi_hba*,int) ;
 int stub2 (struct hisi_hba*,int) ;

void hisi_sas_phy_enable(struct hisi_hba *hisi_hba, int phy_no, int enable)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct asd_sas_phy *aphy = &phy->sas_phy;
 struct sas_phy *sphy = aphy->phy;
 unsigned long flags;

 spin_lock_irqsave(&phy->lock, flags);

 if (enable) {

  if (!phy->enable)
   sphy->negotiated_linkrate = SAS_LINK_RATE_UNKNOWN;
  hisi_hba->hw->phy_start(hisi_hba, phy_no);
 } else {
  sphy->negotiated_linkrate = SAS_PHY_DISABLED;
  hisi_hba->hw->phy_disable(hisi_hba, phy_no);
 }
 phy->enable = enable;
 spin_unlock_irqrestore(&phy->lock, flags);
}
