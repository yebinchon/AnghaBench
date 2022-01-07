
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int ci_kref; } ;


 int config_item_release ;
 int kref_put (int *,int ) ;

void config_item_put(struct config_item *item)
{
 if (item)
  kref_put(&item->ci_kref, config_item_release);
}
