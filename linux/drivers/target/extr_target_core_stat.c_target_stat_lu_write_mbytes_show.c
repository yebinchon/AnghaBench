
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int write_bytes; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int atomic_long_read (int *) ;
 int snprintf (char*,int ,char*,int) ;
 struct se_device* to_stat_lu_dev (struct config_item*) ;

__attribute__((used)) static ssize_t target_stat_lu_write_mbytes_show(struct config_item *item,
  char *page)
{
 struct se_device *dev = to_stat_lu_dev(item);


 return snprintf(page, PAGE_SIZE, "%lu\n",
   atomic_long_read(&dev->write_bytes) >> 20);
}
