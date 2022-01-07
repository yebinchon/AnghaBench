
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_lookup {char const* dev_id; char const* con_id; int node; struct phy* phy; } ;
struct phy {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct phy_lookup* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_provider_mutex ;
 int phys ;

int phy_create_lookup(struct phy *phy, const char *con_id, const char *dev_id)
{
 struct phy_lookup *pl;

 if (!phy || !dev_id || !con_id)
  return -EINVAL;

 pl = kzalloc(sizeof(*pl), GFP_KERNEL);
 if (!pl)
  return -ENOMEM;

 pl->dev_id = dev_id;
 pl->con_id = con_id;
 pl->phy = phy;

 mutex_lock(&phy_provider_mutex);
 list_add_tail(&pl->node, &phys);
 mutex_unlock(&phy_provider_mutex);

 return 0;
}
