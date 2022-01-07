
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int tiqn_index; } ;


 int PAGE_SIZE ;
 TYPE_1__* iscsi_login_stat_tiqn (struct config_item*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t iscsi_stat_login_inst_show(struct config_item *item, char *page)
{
 return snprintf(page, PAGE_SIZE, "%u\n",
  iscsi_login_stat_tiqn(item)->tiqn_index);
}
