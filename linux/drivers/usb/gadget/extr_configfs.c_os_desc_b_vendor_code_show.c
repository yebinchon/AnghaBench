
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int b_vendor_code; } ;


 TYPE_1__* os_desc_item_to_gadget_info (struct config_item*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t os_desc_b_vendor_code_show(struct config_item *item, char *page)
{
 return sprintf(page, "0x%02x\n",
   os_desc_item_to_gadget_info(item)->b_vendor_code);
}
