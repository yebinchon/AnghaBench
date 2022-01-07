
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_device {struct ex_phy* ex_phy; } ;
struct ex_phy {int linkrate; } ;
struct domain_device {struct expander_device ex_dev; } ;


 int PHY_FUNC_DISABLE ;
 int SAS_PHY_DISABLED ;
 int sas_smp_phy_control (struct domain_device*,int,int ,int *) ;

__attribute__((used)) static void sas_ex_disable_phy(struct domain_device *dev, int phy_id)
{
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *phy = &ex->ex_phy[phy_id];

 sas_smp_phy_control(dev, phy_id, PHY_FUNC_DISABLE, ((void*)0));
 phy->linkrate = SAS_PHY_DISABLED;
}
