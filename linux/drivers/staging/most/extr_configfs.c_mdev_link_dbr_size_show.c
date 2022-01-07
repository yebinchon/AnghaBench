
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dbr_size; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 TYPE_1__* to_mdev_link (struct config_item*) ;

__attribute__((used)) static ssize_t mdev_link_dbr_size_show(struct config_item *item, char *page)
{
 return snprintf(page, PAGE_SIZE, "%d\n", to_mdev_link(item)->dbr_size);
}
