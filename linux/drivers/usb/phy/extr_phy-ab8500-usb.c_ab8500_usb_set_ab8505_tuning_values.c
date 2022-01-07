
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_usb {int dev; } ;


 int AB8500_BANK12_ACCESS ;
 int AB8500_DEBUG ;
 int AB8500_DEVELOPMENT ;
 int AB8500_USB_PHY_TUNE1 ;
 int AB8500_USB_PHY_TUNE2 ;
 int AB8500_USB_PHY_TUNE3 ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static void ab8500_usb_set_ab8505_tuning_values(struct ab8500_usb *ab)
{
 int err;


 err = abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_DEVELOPMENT, AB8500_BANK12_ACCESS,
   0x01, 0x01);
 if (err < 0)
  dev_err(ab->dev, "Failed to enable bank12 access err=%d\n",
    err);

 err = abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_DEBUG, AB8500_USB_PHY_TUNE1,
   0xC8, 0xC8);
 if (err < 0)
  dev_err(ab->dev, "Failed to set PHY_TUNE1 register err=%d\n",
    err);

 err = abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_DEBUG, AB8500_USB_PHY_TUNE2,
   0x60, 0x60);
 if (err < 0)
  dev_err(ab->dev, "Failed to set PHY_TUNE2 register err=%d\n",
    err);

 err = abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_DEBUG, AB8500_USB_PHY_TUNE3,
   0xFC, 0x80);

 if (err < 0)
  dev_err(ab->dev, "Failed to set PHY_TUNE3 register err=%d\n",
    err);


 err = abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_DEVELOPMENT, AB8500_BANK12_ACCESS,
   0x00, 0x00);
 if (err < 0)
  dev_err(ab->dev, "Failed to switch bank12 access err=%d\n",
    err);
}
