
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_se_dev; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int core_alua_store_secondary_status (struct se_lun*,char const*,size_t) ;
 struct se_lun* item_to_lun (struct config_item*) ;

__attribute__((used)) static ssize_t target_fabric_port_alua_tg_pt_status_store(
  struct config_item *item, const char *page, size_t count)
{
 struct se_lun *lun = item_to_lun(item);

 if (!lun || !lun->lun_se_dev)
  return -ENODEV;

 return core_alua_store_secondary_status(lun, page, count);
}
