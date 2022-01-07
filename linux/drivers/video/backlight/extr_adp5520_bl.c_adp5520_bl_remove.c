
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct backlight_device {TYPE_2__ dev; } ;
struct adp5520_bl {TYPE_1__* pdata; int master; } ;
struct TYPE_3__ {scalar_t__ en_ambl_sens; } ;


 int ADP5520_BL_EN ;
 int ADP5520_MODE_STATUS ;
 int adp5520_bl_attr_group ;
 int adp5520_clr_bits (int ,int ,int ) ;
 struct adp5520_bl* bl_get_data (struct backlight_device*) ;
 struct backlight_device* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int adp5520_bl_remove(struct platform_device *pdev)
{
 struct backlight_device *bl = platform_get_drvdata(pdev);
 struct adp5520_bl *data = bl_get_data(bl);

 adp5520_clr_bits(data->master, ADP5520_MODE_STATUS, ADP5520_BL_EN);

 if (data->pdata->en_ambl_sens)
  sysfs_remove_group(&bl->dev.kobj,
    &adp5520_bl_attr_group);

 return 0;
}
