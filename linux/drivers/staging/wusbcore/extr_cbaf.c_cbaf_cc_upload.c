
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; } ;
struct TYPE_6__ {int data; } ;
struct wusb_cbaf_cc_data {TYPE_2__ CDID; TYPE_1__ CHID; int BandGroups; int CK; } ;
struct device {int dummy; } ;
struct cbaf {TYPE_5__* usb_iface; int usb_dev; int host_band_groups; int ck; TYPE_2__ cdid; TYPE_1__ chid; struct wusb_cbaf_cc_data* buffer; } ;
struct TYPE_10__ {TYPE_4__* cur_altsetting; struct device dev; } ;
struct TYPE_8__ {int bInterfaceNumber; } ;
struct TYPE_9__ {TYPE_3__ desc; } ;


 int CBAF_REQ_SET_ASSOCIATION_RESPONSE ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_CLASS ;
 struct wusb_cbaf_cc_data cbaf_cc_data_defaults ;
 int cpu_to_le16 (int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,struct wusb_cbaf_cc_data*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int cbaf_cc_upload(struct cbaf *cbaf)
{
 int result;
 struct device *dev = &cbaf->usb_iface->dev;
 struct wusb_cbaf_cc_data *ccd;

 ccd = cbaf->buffer;
 *ccd = cbaf_cc_data_defaults;
 ccd->CHID = cbaf->chid;
 ccd->CDID = cbaf->cdid;
 ccd->CK = cbaf->ck;
 ccd->BandGroups = cpu_to_le16(cbaf->host_band_groups);

 dev_dbg(dev, "Trying to upload CC:\n");
 dev_dbg(dev, "  CHID       %16ph\n", ccd->CHID.data);
 dev_dbg(dev, "  CDID       %16ph\n", ccd->CDID.data);
 dev_dbg(dev, "  Bandgroups 0x%04x\n", cbaf->host_band_groups);

 result = usb_control_msg(
  cbaf->usb_dev, usb_sndctrlpipe(cbaf->usb_dev, 0),
  CBAF_REQ_SET_ASSOCIATION_RESPONSE,
  USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
  0x0201, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
  ccd, sizeof(*ccd), USB_CTRL_SET_TIMEOUT);

 return result;
}
