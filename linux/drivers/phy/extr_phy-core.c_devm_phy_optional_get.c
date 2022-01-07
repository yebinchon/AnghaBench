
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 struct phy* devm_phy_get (struct device*,char const*) ;

struct phy *devm_phy_optional_get(struct device *dev, const char *string)
{
 struct phy *phy = devm_phy_get(dev, string);

 if (IS_ERR(phy) && (PTR_ERR(phy) == -ENODEV))
  phy = ((void*)0);

 return phy;
}
