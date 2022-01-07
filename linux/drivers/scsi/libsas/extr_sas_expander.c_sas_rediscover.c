
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {int attached_sas_addr; } ;
struct domain_device {int sas_addr; struct expander_device ex_dev; } ;


 scalar_t__ SAS_ADDR (int ) ;
 int pr_debug (char*,scalar_t__,int const) ;
 int sas_discover_new (struct domain_device*,int const) ;
 int sas_rediscover_dev (struct domain_device*,int const,int,int) ;

__attribute__((used)) static int sas_rediscover(struct domain_device *dev, const int phy_id)
{
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *changed_phy = &ex->ex_phy[phy_id];
 int res = 0;
 int i;
 bool last = 1;

 pr_debug("ex %016llx phy%02d originated BROADCAST(CHANGE)\n",
   SAS_ADDR(dev->sas_addr), phy_id);

 if (SAS_ADDR(changed_phy->attached_sas_addr) != 0) {
  for (i = 0; i < ex->num_phys; i++) {
   struct ex_phy *phy = &ex->ex_phy[i];

   if (i == phy_id)
    continue;
   if (SAS_ADDR(phy->attached_sas_addr) ==
       SAS_ADDR(changed_phy->attached_sas_addr)) {
    last = 0;
    break;
   }
  }
  res = sas_rediscover_dev(dev, phy_id, last, i);
 } else
  res = sas_discover_new(dev, phy_id);
 return res;
}
