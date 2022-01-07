
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct show_links_data {char* buf; int offs; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int bus; } ;


 int bus_for_each_dev (int *,int *,struct show_links_data*,int ) ;
 TYPE_1__ mc ;
 int print_links ;

__attribute__((used)) static ssize_t links_show(struct device_driver *drv, char *buf)
{
 struct show_links_data d = { .buf = buf };

 bus_for_each_dev(&mc.bus, ((void*)0), &d, print_links);
 return d.offs;
}
