
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct hisi_sas_phy {TYPE_1__ timer; } ;
struct hisi_hba {struct device* dev; struct hisi_sas_phy* phy; } ;
struct device {int dummy; } ;


 int HISI_SAS_WAIT_PHYUP_TIMEOUT ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int dev_dbg (struct device*,char*,int) ;
 scalar_t__ jiffies ;
 int timer_pending (TYPE_1__*) ;

void hisi_sas_phy_oob_ready(struct hisi_hba *hisi_hba, int phy_no)
{
 struct hisi_sas_phy *phy = &hisi_hba->phy[phy_no];
 struct device *dev = hisi_hba->dev;

 if (!timer_pending(&phy->timer)) {
  dev_dbg(dev, "phy%d OOB ready\n", phy_no);
  phy->timer.expires = jiffies + HISI_SAS_WAIT_PHYUP_TIMEOUT * HZ;
  add_timer(&phy->timer);
 }
}
