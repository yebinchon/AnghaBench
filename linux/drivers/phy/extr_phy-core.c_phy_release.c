
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int id; int pwr; } ;
struct device {int dummy; } ;


 int dev_name (struct device*) ;
 int dev_vdbg (struct device*,char*,int ) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct phy*) ;
 int phy_ida ;
 int regulator_put (int ) ;
 struct phy* to_phy (struct device*) ;

__attribute__((used)) static void phy_release(struct device *dev)
{
 struct phy *phy;

 phy = to_phy(dev);
 dev_vdbg(dev, "releasing '%s'\n", dev_name(dev));
 regulator_put(phy->pwr);
 ida_simple_remove(&phy_ida, phy->id);
 kfree(phy);
}
