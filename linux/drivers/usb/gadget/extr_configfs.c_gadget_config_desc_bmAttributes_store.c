
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int bmAttributes; } ;
struct TYPE_4__ {TYPE_1__ c; } ;


 int EINVAL ;
 int USB_CONFIG_ATT_ONE ;
 int USB_CONFIG_ATT_SELFPOWER ;
 int USB_CONFIG_ATT_WAKEUP ;
 int kstrtou8 (char const*,int ,int*) ;
 TYPE_2__* to_config_usb_cfg (struct config_item*) ;

__attribute__((used)) static ssize_t gadget_config_desc_bmAttributes_store(struct config_item *item,
  const char *page, size_t len)
{
 u8 val;
 int ret;
 ret = kstrtou8(page, 0, &val);
 if (ret)
  return ret;
 if (!(val & USB_CONFIG_ATT_ONE))
  return -EINVAL;
 if (val & ~(USB_CONFIG_ATT_ONE | USB_CONFIG_ATT_SELFPOWER |
    USB_CONFIG_ATT_WAKEUP))
  return -EINVAL;
 to_config_usb_cfg(item)->c.bmAttributes = val;
 return len;
}
