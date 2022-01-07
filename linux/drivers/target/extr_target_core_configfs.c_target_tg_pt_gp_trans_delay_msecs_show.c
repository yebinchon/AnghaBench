
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int core_alua_show_trans_delay_msecs (int ,char*) ;
 int to_tg_pt_gp (struct config_item*) ;

__attribute__((used)) static ssize_t target_tg_pt_gp_trans_delay_msecs_show(struct config_item *item,
  char *page)
{
 return core_alua_show_trans_delay_msecs(to_tg_pt_gp(item), page);
}
