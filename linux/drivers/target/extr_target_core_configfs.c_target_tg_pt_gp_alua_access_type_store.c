
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int core_alua_store_access_type (int ,char const*,size_t) ;
 int to_tg_pt_gp (struct config_item*) ;

__attribute__((used)) static ssize_t target_tg_pt_gp_alua_access_type_store(struct config_item *item,
  const char *page, size_t count)
{
 return core_alua_store_access_type(to_tg_pt_gp(item), page, count);
}
