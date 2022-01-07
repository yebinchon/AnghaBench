
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wusbhc {int mutex; int dev; } ;
struct wusb_dev {int entry_ts; } ;


 int __wusbhc_keep_alive (struct wusbhc*) ;
 int dev_dbg (int ,char*,int ) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct wusb_dev* wusbhc_find_dev_by_addr (struct wusbhc*,int ) ;

__attribute__((used)) static void wusbhc_handle_dn_alive(struct wusbhc *wusbhc, u8 srcaddr)
{
 struct wusb_dev *wusb_dev;

 mutex_lock(&wusbhc->mutex);
 wusb_dev = wusbhc_find_dev_by_addr(wusbhc, srcaddr);
 if (wusb_dev == ((void*)0)) {
  dev_dbg(wusbhc->dev, "ignoring DN_Alive from unconnected device %02x\n",
   srcaddr);
 } else {
  wusb_dev->entry_ts = jiffies;
  __wusbhc_keep_alive(wusbhc);
 }
 mutex_unlock(&wusbhc->mutex);
}
