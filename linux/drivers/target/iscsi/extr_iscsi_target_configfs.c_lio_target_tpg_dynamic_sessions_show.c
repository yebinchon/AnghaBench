
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 int target_show_dynamic_sessions (int ,char*) ;
 int to_tpg (struct config_item*) ;

__attribute__((used)) static ssize_t lio_target_tpg_dynamic_sessions_show(struct config_item *item,
  char *page)
{
 return target_show_dynamic_sessions(to_tpg(item), page);
}
