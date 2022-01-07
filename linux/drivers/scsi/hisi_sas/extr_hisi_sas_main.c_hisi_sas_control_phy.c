
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_ha_struct {struct hisi_hba* lldd_ha; } ;
struct hisi_hba {TYPE_1__* hw; } ;
struct asd_sas_phy {int id; struct sas_ha_struct* ha; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_2__ {int (* get_events ) (struct hisi_hba*,int) ;int (* phy_hard_reset ) (struct hisi_hba*,int) ;} ;


 int EOPNOTSUPP ;






 int hisi_sas_phy_enable (struct hisi_hba*,int,int) ;
 int hisi_sas_phy_set_linkrate (struct hisi_hba*,int,void*) ;
 int msleep (int) ;
 int stub1 (struct hisi_hba*,int) ;
 int stub2 (struct hisi_hba*,int) ;

__attribute__((used)) static int hisi_sas_control_phy(struct asd_sas_phy *sas_phy, enum phy_func func,
    void *funcdata)
{
 struct sas_ha_struct *sas_ha = sas_phy->ha;
 struct hisi_hba *hisi_hba = sas_ha->lldd_ha;
 int phy_no = sas_phy->id;

 switch (func) {
 case 131:
  hisi_hba->hw->phy_hard_reset(hisi_hba, phy_no);
  break;

 case 130:
  hisi_sas_phy_enable(hisi_hba, phy_no, 0);
  msleep(100);
  hisi_sas_phy_enable(hisi_hba, phy_no, 1);
  break;

 case 133:
  hisi_sas_phy_enable(hisi_hba, phy_no, 0);
  break;

 case 128:
  return hisi_sas_phy_set_linkrate(hisi_hba, phy_no, funcdata);
 case 132:
  if (hisi_hba->hw->get_events) {
   hisi_hba->hw->get_events(hisi_hba, phy_no);
   break;
  }

 case 129:
 default:
  return -EOPNOTSUPP;
 }
 return 0;
}
