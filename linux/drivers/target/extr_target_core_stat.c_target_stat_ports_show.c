
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int export_count; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__* to_stat_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_ports_show(struct config_item *item, char *page)
{
 return snprintf(page, PAGE_SIZE, "%u\n", to_stat_dev(item)->export_count);
}
