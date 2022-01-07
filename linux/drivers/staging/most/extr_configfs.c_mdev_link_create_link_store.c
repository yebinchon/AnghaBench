
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int create_link; int list; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int kstrtobool (char const*,int*) ;
 int list_add_tail (int *,int *) ;
 int mdev_link_list ;
 int set_config_and_add_link (struct mdev_link*) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_create_link_store(struct config_item *item,
        const char *page, size_t count)
{
 struct mdev_link *mdev_link = to_mdev_link(item);
 bool tmp;
 int ret;

 ret = kstrtobool(page, &tmp);
 if (ret)
  return ret;
 if (!tmp)
  return count;
 ret = set_config_and_add_link(mdev_link);
 if (ret && ret != -ENODEV)
  return ret;
 list_add_tail(&mdev_link->list, &mdev_link_list);
 mdev_link->create_link = tmp;
 return count;
}
