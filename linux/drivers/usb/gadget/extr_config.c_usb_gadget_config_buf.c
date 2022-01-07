
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_descriptor_header {int dummy; } ;
struct usb_config_descriptor {unsigned int bLength; int bmAttributes; int wTotalLength; int bDescriptorType; } ;


 int EINVAL ;
 int USB_CONFIG_ATT_ONE ;
 int USB_DT_CONFIG ;
 unsigned int USB_DT_CONFIG_SIZE ;
 int cpu_to_le16 (int) ;
 int usb_descriptor_fillbuf (int *,unsigned int,struct usb_descriptor_header const**) ;

int usb_gadget_config_buf(
 const struct usb_config_descriptor *config,
 void *buf,
 unsigned length,
 const struct usb_descriptor_header **desc
)
{
 struct usb_config_descriptor *cp = buf;
 int len;


 if (length < USB_DT_CONFIG_SIZE || !desc)
  return -EINVAL;
 *cp = *config;


 len = usb_descriptor_fillbuf(USB_DT_CONFIG_SIZE + (u8 *)buf,
   length - USB_DT_CONFIG_SIZE, desc);
 if (len < 0)
  return len;
 len += USB_DT_CONFIG_SIZE;
 if (len > 0xffff)
  return -EINVAL;


 cp->bLength = USB_DT_CONFIG_SIZE;
 cp->bDescriptorType = USB_DT_CONFIG;
 cp->wTotalLength = cpu_to_le16(len);
 cp->bmAttributes |= USB_CONFIG_ATT_ONE;
 return len;
}
