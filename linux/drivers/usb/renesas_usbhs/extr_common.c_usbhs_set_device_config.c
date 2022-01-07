
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct usbhs_priv {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ DEVADD0 ;
 int EIO ;
 int HUBPORT (int) ;
 int UPPHUB (int) ;
 int USBSPD (int) ;
 int USBSPD_SPEED_FULL ;
 int USBSPD_SPEED_HIGH ;
 int USBSPD_SPEED_LOW ;



 int dev_err (struct device*,char*,int) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_write (struct usbhs_priv*,scalar_t__,int) ;

int usbhs_set_device_config(struct usbhs_priv *priv, int devnum,
      u16 upphub, u16 hubport, u16 speed)
{
 struct device *dev = usbhs_priv_to_dev(priv);
 u16 usbspd = 0;
 u32 reg = DEVADD0 + (2 * devnum);

 if (devnum > 10) {
  dev_err(dev, "cannot set speed to unknown device %d\n", devnum);
  return -EIO;
 }

 if (upphub > 0xA) {
  dev_err(dev, "unsupported hub number %d\n", upphub);
  return -EIO;
 }

 switch (speed) {
 case 128:
  usbspd = USBSPD_SPEED_LOW;
  break;
 case 130:
  usbspd = USBSPD_SPEED_FULL;
  break;
 case 129:
  usbspd = USBSPD_SPEED_HIGH;
  break;
 default:
  dev_err(dev, "unsupported speed %d\n", speed);
  return -EIO;
 }

 usbhs_write(priv, reg, UPPHUB(upphub) |
    HUBPORT(hubport)|
    USBSPD(usbspd));

 return 0;
}
