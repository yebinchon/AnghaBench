
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct uvc_input_header_descriptor {int bEndpointAddress; void* wTotalLength; } ;
struct uvc_header_descriptor {int bInCollection; int * baInterfaceNr; void* wTotalLength; } ;
struct TYPE_13__ {TYPE_2__* ep; } ;
struct TYPE_11__ {struct uvc_descriptor_header** fs_streaming; struct uvc_descriptor_header** fs_control; struct uvc_descriptor_header** hs_streaming; struct uvc_descriptor_header** ss_streaming; struct uvc_descriptor_header** ss_control; } ;
struct uvc_device {TYPE_3__ video; int streaming_intf; TYPE_1__ desc; } ;
struct uvc_descriptor_header {int dummy; } ;
struct usb_descriptor_header {scalar_t__ bLength; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_14__ {unsigned int bLength; } ;
struct TYPE_12__ {int address; } ;


 int ENODEV ;
 struct usb_descriptor_header** ERR_PTR (int ) ;
 int GFP_KERNEL ;



 int UVC_COPY_DESCRIPTOR (void*,struct usb_descriptor_header**,TYPE_4__*) ;
 int UVC_COPY_DESCRIPTORS (void*,struct usb_descriptor_header**,struct usb_descriptor_header const* const*) ;
 void* cpu_to_le16 (unsigned int) ;
 void* kmalloc (unsigned int,int ) ;
 TYPE_4__ uvc_control_cs_ep ;
 TYPE_4__ uvc_control_ep ;
 TYPE_4__ uvc_control_intf ;
 struct usb_descriptor_header** uvc_fs_streaming ;
 struct usb_descriptor_header** uvc_hs_streaming ;
 TYPE_4__ uvc_iad ;
 TYPE_4__ uvc_ss_control_comp ;
 struct usb_descriptor_header** uvc_ss_streaming ;
 TYPE_4__ uvc_streaming_intf_alt0 ;

__attribute__((used)) static struct usb_descriptor_header **
uvc_copy_descriptors(struct uvc_device *uvc, enum usb_device_speed speed)
{
 struct uvc_input_header_descriptor *uvc_streaming_header;
 struct uvc_header_descriptor *uvc_control_header;
 const struct uvc_descriptor_header * const *uvc_control_desc;
 const struct uvc_descriptor_header * const *uvc_streaming_cls;
 const struct usb_descriptor_header * const *uvc_streaming_std;
 const struct usb_descriptor_header * const *src;
 struct usb_descriptor_header **dst;
 struct usb_descriptor_header **hdr;
 unsigned int control_size;
 unsigned int streaming_size;
 unsigned int n_desc;
 unsigned int bytes;
 void *mem;

 switch (speed) {
 case 128:
  uvc_control_desc = uvc->desc.ss_control;
  uvc_streaming_cls = uvc->desc.ss_streaming;
  uvc_streaming_std = uvc_ss_streaming;
  break;

 case 129:
  uvc_control_desc = uvc->desc.fs_control;
  uvc_streaming_cls = uvc->desc.hs_streaming;
  uvc_streaming_std = uvc_hs_streaming;
  break;

 case 130:
 default:
  uvc_control_desc = uvc->desc.fs_control;
  uvc_streaming_cls = uvc->desc.fs_streaming;
  uvc_streaming_std = uvc_fs_streaming;
  break;
 }

 if (!uvc_control_desc || !uvc_streaming_cls)
  return ERR_PTR(-ENODEV);
 control_size = 0;
 streaming_size = 0;
 bytes = uvc_iad.bLength + uvc_control_intf.bLength
       + uvc_control_ep.bLength + uvc_control_cs_ep.bLength
       + uvc_streaming_intf_alt0.bLength;

 if (speed == 128) {
  bytes += uvc_ss_control_comp.bLength;
  n_desc = 6;
 } else {
  n_desc = 5;
 }

 for (src = (const struct usb_descriptor_header **)uvc_control_desc;
      *src; ++src) {
  control_size += (*src)->bLength;
  bytes += (*src)->bLength;
  n_desc++;
 }
 for (src = (const struct usb_descriptor_header **)uvc_streaming_cls;
      *src; ++src) {
  streaming_size += (*src)->bLength;
  bytes += (*src)->bLength;
  n_desc++;
 }
 for (src = uvc_streaming_std; *src; ++src) {
  bytes += (*src)->bLength;
  n_desc++;
 }

 mem = kmalloc((n_desc + 1) * sizeof(*src) + bytes, GFP_KERNEL);
 if (mem == ((void*)0))
  return ((void*)0);

 hdr = mem;
 dst = mem;
 mem += (n_desc + 1) * sizeof(*src);


 UVC_COPY_DESCRIPTOR(mem, dst, &uvc_iad);
 UVC_COPY_DESCRIPTOR(mem, dst, &uvc_control_intf);

 uvc_control_header = mem;
 UVC_COPY_DESCRIPTORS(mem, dst,
  (const struct usb_descriptor_header **)uvc_control_desc);
 uvc_control_header->wTotalLength = cpu_to_le16(control_size);
 uvc_control_header->bInCollection = 1;
 uvc_control_header->baInterfaceNr[0] = uvc->streaming_intf;

 UVC_COPY_DESCRIPTOR(mem, dst, &uvc_control_ep);
 if (speed == 128)
  UVC_COPY_DESCRIPTOR(mem, dst, &uvc_ss_control_comp);

 UVC_COPY_DESCRIPTOR(mem, dst, &uvc_control_cs_ep);
 UVC_COPY_DESCRIPTOR(mem, dst, &uvc_streaming_intf_alt0);

 uvc_streaming_header = mem;
 UVC_COPY_DESCRIPTORS(mem, dst,
  (const struct usb_descriptor_header**)uvc_streaming_cls);
 uvc_streaming_header->wTotalLength = cpu_to_le16(streaming_size);
 uvc_streaming_header->bEndpointAddress = uvc->video.ep->address;

 UVC_COPY_DESCRIPTORS(mem, dst, uvc_streaming_std);

 *dst = ((void*)0);
 return hdr;
}
