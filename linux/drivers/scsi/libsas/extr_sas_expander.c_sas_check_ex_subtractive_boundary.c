
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {scalar_t__ phy_state; scalar_t__ routing_attr; int * attached_sas_addr; int attached_dev_type; } ;
struct domain_device {scalar_t__ dev_type; int * sas_addr; struct expander_device ex_dev; } ;


 scalar_t__ PHY_NOT_PRESENT ;
 scalar_t__ PHY_VACANT ;
 scalar_t__ SAS_ADDR (int *) ;
 scalar_t__ SAS_EDGE_EXPANDER_DEVICE ;
 scalar_t__ SUBTRACTIVE_ROUTING ;
 scalar_t__ dev_is_expander (int ) ;
 int pr_notice (char*,scalar_t__,int,scalar_t__,scalar_t__) ;
 int sas_ex_disable_phy (struct domain_device*,int) ;

__attribute__((used)) static int sas_check_ex_subtractive_boundary(struct domain_device *dev)
{
 struct expander_device *ex = &dev->ex_dev;
 int i;
 u8 *sub_sas_addr = ((void*)0);

 if (dev->dev_type != SAS_EDGE_EXPANDER_DEVICE)
  return 0;

 for (i = 0; i < ex->num_phys; i++) {
  struct ex_phy *phy = &ex->ex_phy[i];

  if (phy->phy_state == PHY_VACANT ||
      phy->phy_state == PHY_NOT_PRESENT)
   continue;

  if (dev_is_expander(phy->attached_dev_type) &&
      phy->routing_attr == SUBTRACTIVE_ROUTING) {

   if (!sub_sas_addr)
    sub_sas_addr = &phy->attached_sas_addr[0];
   else if (SAS_ADDR(sub_sas_addr) !=
     SAS_ADDR(phy->attached_sas_addr)) {

    pr_notice("ex %016llx phy%02d diverges(%016llx) on subtractive boundary(%016llx). Disabled\n",
       SAS_ADDR(dev->sas_addr), i,
       SAS_ADDR(phy->attached_sas_addr),
       SAS_ADDR(sub_sas_addr));
    sas_ex_disable_phy(dev, i);
   }
  }
 }
 return 0;
}
