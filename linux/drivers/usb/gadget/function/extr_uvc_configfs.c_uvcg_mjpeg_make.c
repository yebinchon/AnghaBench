
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct config_group {int dummy; } ;
struct TYPE_4__ {struct config_group group; int type; } ;
struct TYPE_3__ {int bDefaultFrameIndex; scalar_t__ bCopyProtect; scalar_t__ bmInterfaceFlags; scalar_t__ bAspectRatioY; scalar_t__ bAspectRatioX; int bDescriptorSubType; int bDescriptorType; int bLength; } ;
struct uvcg_mjpeg {TYPE_2__ fmt; TYPE_1__ desc; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int USB_DT_CS_INTERFACE ;
 int UVCG_MJPEG ;
 int UVC_DT_FORMAT_MJPEG_SIZE ;
 int UVC_VS_FORMAT_MJPEG ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 struct uvcg_mjpeg* kzalloc (int,int ) ;
 int uvcg_mjpeg_type ;

__attribute__((used)) static struct config_group *uvcg_mjpeg_make(struct config_group *group,
         const char *name)
{
 struct uvcg_mjpeg *h;

 h = kzalloc(sizeof(*h), GFP_KERNEL);
 if (!h)
  return ERR_PTR(-ENOMEM);

 h->desc.bLength = UVC_DT_FORMAT_MJPEG_SIZE;
 h->desc.bDescriptorType = USB_DT_CS_INTERFACE;
 h->desc.bDescriptorSubType = UVC_VS_FORMAT_MJPEG;
 h->desc.bDefaultFrameIndex = 1;
 h->desc.bAspectRatioX = 0;
 h->desc.bAspectRatioY = 0;
 h->desc.bmInterfaceFlags = 0;
 h->desc.bCopyProtect = 0;

 h->fmt.type = UVCG_MJPEG;
 config_group_init_type_name(&h->fmt.group, name,
        &uvcg_mjpeg_type);

 return &h->fmt.group;
}
