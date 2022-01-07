
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct phy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct phy*) ;
 int devm_phy_release ;
 int devres_add (struct device*,struct phy**) ;
 struct phy** devres_alloc (int ,int,int ) ;
 int devres_free (struct phy**) ;
 struct phy* phy_get (struct device*,char const*) ;

struct phy *devm_phy_get(struct device *dev, const char *string)
{
 struct phy **ptr, *phy;

 ptr = devres_alloc(devm_phy_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 phy = phy_get(dev, string);
 if (!IS_ERR(phy)) {
  *ptr = phy;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return phy;
}
