
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int destroy_link; int list; int comp; int channel; int device; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int kstrtobool (char const*,int*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mdev_link_list ;
 int most_remove_link (int ,int ,int ) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_destroy_link_store(struct config_item *item,
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
 mdev_link->destroy_link = tmp;
 ret = most_remove_link(mdev_link->device, mdev_link->channel,
          mdev_link->comp);
 if (ret)
  return ret;
 if (!list_empty(&mdev_link_list))
  list_del(&mdev_link->list);
 return count;
}
