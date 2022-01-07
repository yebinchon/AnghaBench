
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mutex; struct device* dev; } ;
struct wusb_dev {int port_idx; int addr; } ;
struct device {int dummy; } ;


 int __wusbhc_dev_disconnect (struct wusbhc*,int ) ;
 int dev_dbg (struct device*,char*,int ) ;
 int dev_info (struct device*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wusb_port_by_idx (struct wusbhc*,int ) ;
 struct wusb_dev* wusbhc_find_dev_by_addr (struct wusbhc*,int ) ;

__attribute__((used)) static void wusbhc_handle_dn_disconnect(struct wusbhc *wusbhc, u8 srcaddr)
{
 struct device *dev = wusbhc->dev;
 struct wusb_dev *wusb_dev;

 mutex_lock(&wusbhc->mutex);
 wusb_dev = wusbhc_find_dev_by_addr(wusbhc, srcaddr);
 if (wusb_dev == ((void*)0)) {
  dev_dbg(dev, "ignoring DN DISCONNECT from unconnected device %02x\n",
   srcaddr);
 } else {
  dev_info(dev, "DN DISCONNECT: device 0x%02x going down\n",
   wusb_dev->addr);
  __wusbhc_dev_disconnect(wusbhc, wusb_port_by_idx(wusbhc,
   wusb_dev->port_idx));
 }
 mutex_unlock(&wusbhc->mutex);
}
