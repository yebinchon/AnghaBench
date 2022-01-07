
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int direction; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int strcpy (int ,char const*) ;
 int sysfs_streq (char const*,char*) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_direction_store(struct config_item *item,
      const char *page, size_t count)
{
 struct mdev_link *mdev_link = to_mdev_link(item);

 if (!sysfs_streq(page, "dir_rx") && !sysfs_streq(page, "rx") &&
     !sysfs_streq(page, "dir_tx") && !sysfs_streq(page, "tx"))
  return -EINVAL;
 strcpy(mdev_link->direction, page);
 return count;
}
