
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int bmAttributes; } ;
struct TYPE_4__ {TYPE_1__ c; } ;


 int sprintf (char*,char*,int) ;
 TYPE_2__* to_config_usb_cfg (struct config_item*) ;

__attribute__((used)) static ssize_t gadget_config_desc_bmAttributes_show(struct config_item *item,
  char *page)
{
 return sprintf(page, "0x%02x\n",
  to_config_usb_cfg(item)->c.bmAttributes);
}
