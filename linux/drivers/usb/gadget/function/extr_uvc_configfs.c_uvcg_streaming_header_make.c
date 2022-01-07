
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct TYPE_2__ {int bTerminalLink; int bControlSize; int bDescriptorSubType; int bDescriptorType; } ;
struct uvcg_streaming_header {struct config_item item; TYPE_1__ desc; int formats; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int USB_DT_CS_INTERFACE ;
 int UVCG_STREAMING_CONTROL_SIZE ;
 int UVC_VS_INPUT_HEADER ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct uvcg_streaming_header* kzalloc (int,int ) ;
 int uvcg_streaming_header_type ;

__attribute__((used)) static struct config_item
*uvcg_streaming_header_make(struct config_group *group, const char *name)
{
 struct uvcg_streaming_header *h;

 h = kzalloc(sizeof(*h), GFP_KERNEL);
 if (!h)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&h->formats);
 h->desc.bDescriptorType = USB_DT_CS_INTERFACE;
 h->desc.bDescriptorSubType = UVC_VS_INPUT_HEADER;
 h->desc.bTerminalLink = 3;
 h->desc.bControlSize = UVCG_STREAMING_CONTROL_SIZE;

 config_item_init_type_name(&h->item, name, &uvcg_streaming_header_type);

 return &h->item;
}
