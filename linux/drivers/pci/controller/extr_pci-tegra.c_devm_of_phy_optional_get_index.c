
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 struct phy* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct phy*) ;
 int PTR_ERR (struct phy*) ;
 struct phy* devm_of_phy_get (struct device*,struct device_node*,char*) ;
 char* kasprintf (int ,char*,char const*,unsigned int) ;
 int kfree (char*) ;

__attribute__((used)) static struct phy *devm_of_phy_optional_get_index(struct device *dev,
        struct device_node *np,
        const char *consumer,
        unsigned int index)
{
 struct phy *phy;
 char *name;

 name = kasprintf(GFP_KERNEL, "%s-%u", consumer, index);
 if (!name)
  return ERR_PTR(-ENOMEM);

 phy = devm_of_phy_get(dev, np, name);
 kfree(name);

 if (IS_ERR(phy) && PTR_ERR(phy) == -ENODEV)
  phy = ((void*)0);

 return phy;
}
