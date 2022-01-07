
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_link {int comp_params; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 int strcpy (int ,char const*) ;
 struct mdev_link* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_comp_params_store(struct config_item *item,
        const char *page, size_t count)
{
 struct mdev_link *mdev_link = to_mdev_link(item);

 strcpy(mdev_link->comp_params, page);
 return count;
}
