
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {int dummy; } ;
struct device {int dummy; } ;


 int of_phy_provider_unregister (struct phy_provider*) ;

__attribute__((used)) static void devm_phy_provider_release(struct device *dev, void *res)
{
 struct phy_provider *phy_provider = *(struct phy_provider **)res;

 of_phy_provider_unregister(phy_provider);
}
