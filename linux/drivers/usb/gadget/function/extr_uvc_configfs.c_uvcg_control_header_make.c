
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct TYPE_2__ {int dwClockFrequency; int bcdUVC; int bDescriptorSubType; int bDescriptorType; int bLength; } ;
struct uvcg_control_header {struct config_item item; TYPE_1__ desc; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int USB_DT_CS_INTERFACE ;
 int UVC_DT_HEADER_SIZE (int) ;
 int UVC_VC_HEADER ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 struct uvcg_control_header* kzalloc (int,int ) ;
 int uvcg_control_header_type ;

__attribute__((used)) static struct config_item *uvcg_control_header_make(struct config_group *group,
          const char *name)
{
 struct uvcg_control_header *h;

 h = kzalloc(sizeof(*h), GFP_KERNEL);
 if (!h)
  return ERR_PTR(-ENOMEM);

 h->desc.bLength = UVC_DT_HEADER_SIZE(1);
 h->desc.bDescriptorType = USB_DT_CS_INTERFACE;
 h->desc.bDescriptorSubType = UVC_VC_HEADER;
 h->desc.bcdUVC = cpu_to_le16(0x0100);
 h->desc.dwClockFrequency = cpu_to_le32(48000000);

 config_item_init_type_name(&h->item, name, &uvcg_control_header_type);

 return &h->item;
}
