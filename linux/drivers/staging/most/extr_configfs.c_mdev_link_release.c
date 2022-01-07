
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int list; int comp; int channel; int device; } ;
struct config_item {int dummy; } ;


 int ENODEV ;
 int kfree (struct mdev_link*) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mdev_link_list ;
 int most_remove_link (int ,int ,int ) ;
 int pr_err (char*) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static void mdev_link_release(struct config_item *item)
{
 struct mdev_link *mdev_link = to_mdev_link(item);
 int ret;

 if (!list_empty(&mdev_link_list)) {
  ret = most_remove_link(mdev_link->device, mdev_link->channel,
           mdev_link->comp);
  if (ret && (ret != -ENODEV))
   pr_err("Removing link failed.\n");
  list_del(&mdev_link->list);
 }
 kfree(to_mdev_link(item));
}
