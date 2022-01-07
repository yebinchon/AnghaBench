
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wusbhc {struct device* dev; } ;
struct wusb_dev {int addr; } ;
struct TYPE_5__ {int bLength; int bIEIdentifier; } ;
struct wuie_disconnect {TYPE_1__ hdr; int bDeviceAddress; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct wusb_dev* wusb_dev; } ;


 int GFP_KERNEL ;
 int WUIE_ID_DEVICE_DISCONNECT ;
 int __wusbhc_dev_disconnect (struct wusbhc*,TYPE_3__*) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_err (struct device*,char*,int) ;
 int kfree (struct wuie_disconnect*) ;
 struct wuie_disconnect* kzalloc (int,int ) ;
 int msleep (int) ;
 TYPE_3__* wusb_port_by_idx (struct wusbhc*,int ) ;
 int wusbhc_mmcie_rm (struct wusbhc*,TYPE_1__*) ;
 int wusbhc_mmcie_set (struct wusbhc*,int ,int ,TYPE_1__*) ;

void __wusbhc_dev_disable(struct wusbhc *wusbhc, u8 port_idx)
{
 int result;
 struct device *dev = wusbhc->dev;
 struct wusb_dev *wusb_dev;
 struct wuie_disconnect *ie;

 wusb_dev = wusb_port_by_idx(wusbhc, port_idx)->wusb_dev;
 if (wusb_dev == ((void*)0)) {

  dev_dbg(dev, "DISCONNECT: no device at port %u, ignoring\n",
   port_idx);
  return;
 }
 __wusbhc_dev_disconnect(wusbhc, wusb_port_by_idx(wusbhc, port_idx));

 ie = kzalloc(sizeof(*ie), GFP_KERNEL);
 if (ie == ((void*)0))
  return;
 ie->hdr.bLength = sizeof(*ie);
 ie->hdr.bIEIdentifier = WUIE_ID_DEVICE_DISCONNECT;
 ie->bDeviceAddress = wusb_dev->addr;
 result = wusbhc_mmcie_set(wusbhc, 0, 0, &ie->hdr);
 if (result < 0)
  dev_err(dev, "DISCONNECT: can't set MMC: %d\n", result);
 else {

  msleep(7*4);
  wusbhc_mmcie_rm(wusbhc, &ie->hdr);
 }
 kfree(ie);
}
