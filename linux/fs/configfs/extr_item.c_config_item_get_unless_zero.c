
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int ci_kref; } ;


 scalar_t__ kref_get_unless_zero (int *) ;

struct config_item *config_item_get_unless_zero(struct config_item *item)
{
 if (item && kref_get_unless_zero(&item->ci_kref))
  return item;
 return ((void*)0);
}
