
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbatm_data {TYPE_1__* usb_intf; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {struct usbatm_data* usbatm; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOENT ;
 scalar_t__ request_firmware (struct firmware const**,char*,struct device*) ;
 int sprintf (char*,char*,char*) ;
 int usb_dbg (struct usbatm_data*,char*,char*) ;
 int usb_info (struct usbatm_data*,char*,char*) ;

__attribute__((used)) static int cxacru_find_firmware(struct cxacru_data *instance,
    char *phase, const struct firmware **fw_p)
{
 struct usbatm_data *usbatm = instance->usbatm;
 struct device *dev = &usbatm->usb_intf->dev;
 char buf[16];

 sprintf(buf, "cxacru-%s.bin", phase);
 usb_dbg(usbatm, "cxacru_find_firmware: looking for %s\n", buf);

 if (request_firmware(fw_p, buf, dev)) {
  usb_dbg(usbatm, "no stage %s firmware found\n", phase);
  return -ENOENT;
 }

 usb_info(usbatm, "found firmware %s\n", buf);

 return 0;
}
