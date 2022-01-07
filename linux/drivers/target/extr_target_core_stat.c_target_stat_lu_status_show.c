
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {scalar_t__ export_count; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,char*) ;
 struct se_device* to_stat_lu_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_lu_status_show(struct config_item *item, char *page)
{
 struct se_device *dev = to_stat_lu_dev(item);


 return snprintf(page, PAGE_SIZE, "%s\n",
  (dev->export_count) ? "available" : "notavailable");
}
