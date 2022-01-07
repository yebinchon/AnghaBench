
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {scalar_t__ creation_time; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int HZ ;
 int INITIAL_JIFFIES ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct se_device* to_stat_lu_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_lu_creation_time_show(struct config_item *item,
  char *page)
{
 struct se_device *dev = to_stat_lu_dev(item);


 return snprintf(page, PAGE_SIZE, "%u\n", (u32)(((u32)dev->creation_time -
    INITIAL_JIFFIES) * 100 / HZ));
}
