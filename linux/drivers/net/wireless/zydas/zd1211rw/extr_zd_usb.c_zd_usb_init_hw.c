
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int initialized; } ;
struct zd_mac {int hw; } ;


 int dev_dbg_f (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int upload_firmware (struct zd_usb*) ;
 int usb_reset_configuration (int ) ;
 int zd_mac_init_hw (int ) ;
 int zd_usb_dev (struct zd_usb*) ;
 struct zd_mac* zd_usb_to_mac (struct zd_usb*) ;
 int zd_usb_to_usbdev (struct zd_usb*) ;

int zd_usb_init_hw(struct zd_usb *usb)
{
 int r;
 struct zd_mac *mac = zd_usb_to_mac(usb);

 dev_dbg_f(zd_usb_dev(usb), "\n");

 r = upload_firmware(usb);
 if (r) {
  dev_err(zd_usb_dev(usb),
         "couldn't load firmware. Error number %d\n", r);
  return r;
 }

 r = usb_reset_configuration(zd_usb_to_usbdev(usb));
 if (r) {
  dev_dbg_f(zd_usb_dev(usb),
   "couldn't reset configuration. Error number %d\n", r);
  return r;
 }

 r = zd_mac_init_hw(mac->hw);
 if (r) {
  dev_dbg_f(zd_usb_dev(usb),
           "couldn't initialize mac. Error number %d\n", r);
  return r;
 }

 usb->initialized = 1;
 return 0;
}
