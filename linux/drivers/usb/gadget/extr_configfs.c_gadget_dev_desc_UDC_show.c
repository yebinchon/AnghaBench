
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* udc_name; } ;
struct TYPE_5__ {TYPE_1__ gadget_driver; } ;
struct TYPE_6__ {TYPE_2__ composite; } ;


 int sprintf (char*,char*,char*) ;
 TYPE_3__* to_gadget_info (struct config_item*) ;

__attribute__((used)) static ssize_t gadget_dev_desc_UDC_show(struct config_item *item, char *page)
{
 char *udc_name = to_gadget_info(item)->composite.gadget_driver.udc_name;

 return sprintf(page, "%s\n", udc_name ?: "");
}
