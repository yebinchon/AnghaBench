
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int tcm_qla2xxx_tpg_enable_show (struct config_item*,char*) ;

__attribute__((used)) static ssize_t tcm_qla2xxx_npiv_tpg_enable_show(struct config_item *item,
  char *page)
{
 return tcm_qla2xxx_tpg_enable_show(item, page);
}
