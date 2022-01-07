
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int use_os_desc; } ;


 TYPE_1__* os_desc_item_to_gadget_info (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t os_desc_use_show(struct config_item *item, char *page)
{
 return sprintf(page, "%d\n",
   os_desc_item_to_gadget_info(item)->use_os_desc);
}
