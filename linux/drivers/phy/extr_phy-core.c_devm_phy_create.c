
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_ops {int dummy; } ;
struct phy {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct phy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct phy*) ;
 int devm_phy_consume ;
 int devres_add (struct device*,struct phy**) ;
 struct phy** devres_alloc (int ,int,int ) ;
 int devres_free (struct phy**) ;
 struct phy* phy_create (struct device*,struct device_node*,struct phy_ops const*) ;

struct phy *devm_phy_create(struct device *dev, struct device_node *node,
       const struct phy_ops *ops)
{
 struct phy **ptr, *phy;

 ptr = devres_alloc(devm_phy_consume, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 phy = phy_create(dev, node, ops);
 if (!IS_ERR(phy)) {
  *ptr = phy;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return phy;
}
