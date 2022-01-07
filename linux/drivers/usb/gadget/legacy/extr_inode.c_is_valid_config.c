
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_config_descriptor {scalar_t__ bDescriptorType; unsigned int bLength; scalar_t__ bConfigurationValue; int bmAttributes; } ;


 int USB_CONFIG_ATT_ONE ;
 int USB_CONFIG_ATT_WAKEUP ;
 scalar_t__ USB_DT_CONFIG ;
 unsigned int USB_DT_CONFIG_SIZE ;

__attribute__((used)) static int is_valid_config(struct usb_config_descriptor *config,
  unsigned int total)
{
 return config->bDescriptorType == USB_DT_CONFIG
  && config->bLength == USB_DT_CONFIG_SIZE
  && total >= USB_DT_CONFIG_SIZE
  && config->bConfigurationValue != 0
  && (config->bmAttributes & USB_CONFIG_ATT_ONE) != 0
  && (config->bmAttributes & USB_CONFIG_ATT_WAKEUP) == 0;


}
