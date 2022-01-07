
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_provider {int children; int list; } ;


 scalar_t__ IS_ERR (struct phy_provider*) ;
 int kfree (struct phy_provider*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_node_put (int ) ;
 int phy_provider_mutex ;

void of_phy_provider_unregister(struct phy_provider *phy_provider)
{
 if (IS_ERR(phy_provider))
  return;

 mutex_lock(&phy_provider_mutex);
 list_del(&phy_provider->list);
 of_node_put(phy_provider->children);
 kfree(phy_provider);
 mutex_unlock(&phy_provider_mutex);
}
