
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct hisi_sas_phy {TYPE_1__ sas_phy; struct hisi_hba* hisi_hba; } ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;


 int HISI_PHYE_LINK_RESET ;
 int dev_warn (struct device*,char*,int) ;
 struct hisi_sas_phy* from_timer (int ,struct timer_list*,int ) ;
 int hisi_sas_notify_phy_event (struct hisi_sas_phy*,int ) ;
 struct hisi_sas_phy* phy ;
 int timer ;

__attribute__((used)) static void hisi_sas_wait_phyup_timedout(struct timer_list *t)
{
 struct hisi_sas_phy *phy = from_timer(phy, t, timer);
 struct hisi_hba *hisi_hba = phy->hisi_hba;
 struct device *dev = hisi_hba->dev;
 int phy_no = phy->sas_phy.id;

 dev_warn(dev, "phy%d wait phyup timeout, issuing link reset\n", phy_no);
 hisi_sas_notify_phy_event(phy, HISI_PHYE_LINK_RESET);
}
