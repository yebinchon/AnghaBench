
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6030_usb {int usb3v3; int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int TWL6030_BACKUP_REG ;
 int TWL6030_CFG_LDO_PD2 ;
 int TWL6030_MISC2 ;
 int TWL6030_MODULE_ID0 ;
 int TWL_MODULE_USB ;
 int USB_ID_CTRL_SET ;
 int USB_VBUS_CTRL_SET ;
 int regulator_get (int ,char*) ;
 int twl6030_writeb (struct twl6030_usb*,int ,int,int ) ;

__attribute__((used)) static int twl6030_usb_ldo_init(struct twl6030_usb *twl)
{

 twl6030_writeb(twl, TWL6030_MODULE_ID0, 0x1, TWL6030_BACKUP_REG);


 twl6030_writeb(twl, TWL6030_MODULE_ID0, 0x1, TWL6030_CFG_LDO_PD2);


 twl6030_writeb(twl, TWL6030_MODULE_ID0, 0x10, TWL6030_MISC2);

 twl->usb3v3 = regulator_get(twl->dev, "usb");
 if (IS_ERR(twl->usb3v3))
  return -ENODEV;


 twl6030_writeb(twl, TWL_MODULE_USB, 0x4, USB_VBUS_CTRL_SET);





 twl6030_writeb(twl, TWL_MODULE_USB, 0x14, USB_ID_CTRL_SET);

 return 0;
}
