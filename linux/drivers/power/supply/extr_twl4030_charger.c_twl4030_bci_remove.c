
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct twl4030_bci {TYPE_2__* ac; TYPE_1__* usb; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int dev; } ;


 int TWL4030_INTERRUPTS_BCIIMR1A ;
 int TWL4030_INTERRUPTS_BCIIMR2A ;
 int TWL4030_MODULE_INTERRUPTS ;
 int dev_attr_mode ;
 int device_remove_file (int *,int *) ;
 struct twl4030_bci* platform_get_drvdata (struct platform_device*) ;
 int twl4030_charger_enable_ac (struct twl4030_bci*,int) ;
 int twl4030_charger_enable_backup (int ,int ) ;
 int twl4030_charger_enable_usb (struct twl4030_bci*,int) ;
 int twl_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static int twl4030_bci_remove(struct platform_device *pdev)
{
 struct twl4030_bci *bci = platform_get_drvdata(pdev);

 twl4030_charger_enable_ac(bci, 0);
 twl4030_charger_enable_usb(bci, 0);
 twl4030_charger_enable_backup(0, 0);

 device_remove_file(&bci->usb->dev, &dev_attr_mode);
 device_remove_file(&bci->ac->dev, &dev_attr_mode);

 twl_i2c_write_u8(TWL4030_MODULE_INTERRUPTS, 0xff,
    TWL4030_INTERRUPTS_BCIIMR1A);
 twl_i2c_write_u8(TWL4030_MODULE_INTERRUPTS, 0xff,
    TWL4030_INTERRUPTS_BCIIMR2A);

 return 0;
}
