
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int net; } ;


 int PAGE_SIZE ;
 int gether_get_ifname (int ,char*,int ) ;
 TYPE_1__* to_f_phonet_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_phonet_ifname_show(struct config_item *item, char *page)
{
 return gether_get_ifname(to_f_phonet_opts(item)->net, page, PAGE_SIZE);
}
