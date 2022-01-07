
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {struct phy* (* of_xlate ) (struct device*,struct of_phandle_args*) ;int list; struct module* owner; void* children; struct device* dev; } ;
struct module {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 struct phy_provider* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct phy_provider* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device_node* of_get_parent (struct device_node*) ;
 void* of_node_get (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int phy_provider_list ;
 int phy_provider_mutex ;

struct phy_provider *__of_phy_provider_register(struct device *dev,
 struct device_node *children, struct module *owner,
 struct phy * (*of_xlate)(struct device *dev,
     struct of_phandle_args *args))
{
 struct phy_provider *phy_provider;






 if (children) {
  struct device_node *parent = of_node_get(children), *next;

  while (parent) {
   if (parent == dev->of_node)
    break;

   next = of_get_parent(parent);
   of_node_put(parent);
   parent = next;
  }

  if (!parent)
   return ERR_PTR(-EINVAL);

  of_node_put(parent);
 } else {
  children = dev->of_node;
 }

 phy_provider = kzalloc(sizeof(*phy_provider), GFP_KERNEL);
 if (!phy_provider)
  return ERR_PTR(-ENOMEM);

 phy_provider->dev = dev;
 phy_provider->children = of_node_get(children);
 phy_provider->owner = owner;
 phy_provider->of_xlate = of_xlate;

 mutex_lock(&phy_provider_mutex);
 list_add_tail(&phy_provider->list, &phy_provider_list);
 mutex_unlock(&phy_provider_mutex);

 return phy_provider;
}
