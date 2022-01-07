
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct wusb_cbaf_assoc_request {int AssociationDataIndex; int AssociationTypeInfoSize; int AssociationSubTypeId; int AssociationTypeId; } ;
struct wusb_cbaf_assoc_info {int NumAssociationRequests; int Length; } ;
struct device {int dummy; } ;
struct cbaf {struct wusb_cbaf_assoc_info* buffer; int buffer_size; TYPE_3__* usb_iface; int usb_dev; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;





 int CBAF_REQ_GET_ASSOCIATION_INFORMATION ;
 int EINVAL ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 int dev_dbg (struct device*,char*,int ,size_t,...) ;
 int dev_err (struct device*,char*,...) ;
 size_t le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,struct wusb_cbaf_assoc_info*,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int cbaf_check(struct cbaf *cbaf)
{
 int result;
 struct device *dev = &cbaf->usb_iface->dev;
 struct wusb_cbaf_assoc_info *assoc_info;
 struct wusb_cbaf_assoc_request *assoc_request;
 size_t assoc_size;
 void *itr, *top;
 int ar_rhi = 0, ar_assoc = 0;

 result = usb_control_msg(
  cbaf->usb_dev, usb_rcvctrlpipe(cbaf->usb_dev, 0),
  CBAF_REQ_GET_ASSOCIATION_INFORMATION,
  USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  cbaf->buffer, cbaf->buffer_size, USB_CTRL_GET_TIMEOUT);
 if (result < 0) {
  dev_err(dev, "Cannot get available association types: %d\n",
   result);
  return result;
 }

 assoc_info = cbaf->buffer;
 if (result < sizeof(*assoc_info)) {
  dev_err(dev, "Not enough data to decode association info "
   "header (%zu vs %zu bytes required)\n",
   (size_t)result, sizeof(*assoc_info));
  return result;
 }

 assoc_size = le16_to_cpu(assoc_info->Length);
 if (result < assoc_size) {
  dev_err(dev, "Not enough data to decode association info "
   "(%zu vs %zu bytes required)\n",
   (size_t)assoc_size, sizeof(*assoc_info));
  return result;
 }





 itr = cbaf->buffer + sizeof(*assoc_info);
 top = cbaf->buffer + assoc_size;
 dev_dbg(dev, "Found %u association requests (%zu bytes)\n",
   assoc_info->NumAssociationRequests, assoc_size);

 while (itr < top) {
  u16 ar_type, ar_subtype;
  u32 ar_size;
  const char *ar_name;

  assoc_request = itr;

  if (top - itr < sizeof(*assoc_request)) {
   dev_err(dev, "Not enough data to decode association "
    "request (%zu vs %zu bytes needed)\n",
    top - itr, sizeof(*assoc_request));
   break;
  }

  ar_type = le16_to_cpu(assoc_request->AssociationTypeId);
  ar_subtype = le16_to_cpu(assoc_request->AssociationSubTypeId);
  ar_size = le32_to_cpu(assoc_request->AssociationTypeInfoSize);
  ar_name = "unknown";

  switch (ar_type) {
  case 130:

   switch (ar_subtype) {
   case 128:
    ar_name = "RETRIEVE_HOST_INFO";
    ar_rhi = 1;
    break;
   case 129:

    ar_name = "ASSOCIATE";
    ar_assoc = 1;
    break;
   }
   break;
  }

  dev_dbg(dev, "Association request #%02u: 0x%04x/%04x "
    "(%zu bytes): %s\n",
    assoc_request->AssociationDataIndex, ar_type,
    ar_subtype, (size_t)ar_size, ar_name);

  itr += sizeof(*assoc_request);
 }

 if (!ar_rhi) {
  dev_err(dev, "Missing RETRIEVE_HOST_INFO association "
   "request\n");
  return -EINVAL;
 }
 if (!ar_assoc) {
  dev_err(dev, "Missing ASSOCIATE association request\n");
  return -EINVAL;
 }

 return 0;
}
