
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_phy_linkrates {int maximum_linkrate; int minimum_linkrate; } ;
struct asd_sas_phy {size_t id; TYPE_1__* ha; } ;
struct asd_phy_desc {int max_sata_lrate; int max_sas_lrate; int min_sata_lrate; int min_sas_lrate; } ;
struct asd_ha_struct {TYPE_2__* phys; } ;
struct asd_ascb {int dummy; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_4__ {struct asd_phy_desc* phy_desc; } ;
struct TYPE_3__ {struct asd_ha_struct* lldd_ha; } ;


 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;


 int PHY_FUNC_LINK_RESET ;

 struct asd_ascb* asd_ascb_alloc_list (struct asd_ha_struct*,int*,int ) ;
 int asd_ascb_free (struct asd_ascb*) ;
 int asd_build_control_phy (struct asd_ascb*,size_t,int ) ;
 int asd_post_ascb_list (struct asd_ha_struct*,struct asd_ascb*,int) ;
 int * phy_func_table ;

int asd_control_phy(struct asd_sas_phy *phy, enum phy_func func, void *arg)
{
 struct asd_ha_struct *asd_ha = phy->ha->lldd_ha;
 struct asd_phy_desc *pd = asd_ha->phys[phy->id].phy_desc;
 struct asd_ascb *ascb;
 struct sas_phy_linkrates *rates;
 int res = 1;

 switch (func) {
 case 130:
 case 129:
  return -ENOSYS;
 case 128:
  rates = arg;
  if (rates->minimum_linkrate) {
   pd->min_sas_lrate = rates->minimum_linkrate;
   pd->min_sata_lrate = rates->minimum_linkrate;
  }
  if (rates->maximum_linkrate) {
   pd->max_sas_lrate = rates->maximum_linkrate;
   pd->max_sata_lrate = rates->maximum_linkrate;
  }
  func = PHY_FUNC_LINK_RESET;
  break;
 default:
  break;
 }

 ascb = asd_ascb_alloc_list(asd_ha, &res, GFP_KERNEL);
 if (!ascb)
  return -ENOMEM;

 asd_build_control_phy(ascb, phy->id, phy_func_table[func]);
 res = asd_post_ascb_list(asd_ha, ascb , 1);
 if (res)
  asd_ascb_free(ascb);

 return res;
}
