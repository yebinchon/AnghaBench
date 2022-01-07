
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct device {int dummy; } ;


 int phy_put (struct phy*) ;

__attribute__((used)) static void devm_phy_release(struct device *dev, void *res)
{
 struct phy *phy = *(struct phy **)res;

 phy_put(phy);
}
