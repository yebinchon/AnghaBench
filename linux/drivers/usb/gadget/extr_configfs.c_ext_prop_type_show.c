
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_usb_os_desc_ext_prop (struct config_item*) ;

__attribute__((used)) static ssize_t ext_prop_type_show(struct config_item *item, char *page)
{
 return sprintf(page, "%d\n", to_usb_os_desc_ext_prop(item)->type);
}
