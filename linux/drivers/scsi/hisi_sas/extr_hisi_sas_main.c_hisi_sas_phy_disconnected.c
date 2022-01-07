
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy {int negotiated_linkrate; } ;
struct asd_sas_phy {struct sas_phy* phy; } ;
struct hisi_sas_phy {int lock; scalar_t__ enable; int * port; scalar_t__ phy_type; scalar_t__ phy_attached; struct asd_sas_phy sas_phy; } ;


 int SAS_LINK_RATE_UNKNOWN ;
 int SAS_PHY_DISABLED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hisi_sas_phy_disconnected(struct hisi_sas_phy *phy)
{
 struct asd_sas_phy *sas_phy = &phy->sas_phy;
 struct sas_phy *sphy = sas_phy->phy;
 unsigned long flags;

 phy->phy_attached = 0;
 phy->phy_type = 0;
 phy->port = ((void*)0);

 spin_lock_irqsave(&phy->lock, flags);
 if (phy->enable)
  sphy->negotiated_linkrate = SAS_LINK_RATE_UNKNOWN;
 else
  sphy->negotiated_linkrate = SAS_PHY_DISABLED;
 spin_unlock_irqrestore(&phy->lock, flags);
}
