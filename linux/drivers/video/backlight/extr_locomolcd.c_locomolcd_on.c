
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct TYPE_5__ {TYPE_1__ dev; scalar_t__ mapbase; } ;


 scalar_t__ LOCOMO_CPSD ;
 int LOCOMO_GPIO_LCD_MOD ;
 int LOCOMO_GPIO_LCD_VEE_ON ;
 int LOCOMO_GPIO_LCD_VSHA_ON ;
 int LOCOMO_GPIO_LCD_VSHD_ON ;
 scalar_t__ LOCOMO_TC ;
 int locomo_gpio_set_dir (int ,int ,int ) ;
 int locomo_gpio_write (int ,int ,int) ;
 int locomo_m62332_senddata (TYPE_2__*,int,int ) ;
 int locomo_writel (int,scalar_t__) ;
 TYPE_2__* locomolcd_dev ;
 int mdelay (int) ;

__attribute__((used)) static void locomolcd_on(int comadj)
{
 locomo_gpio_set_dir(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHA_ON, 0);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHA_ON, 1);
 mdelay(2);

 locomo_gpio_set_dir(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHD_ON, 0);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VSHD_ON, 1);
 mdelay(2);

 locomo_m62332_senddata(locomolcd_dev, comadj, 0);
 mdelay(5);

 locomo_gpio_set_dir(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VEE_ON, 0);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_VEE_ON, 1);
 mdelay(10);


 locomo_writel(0x01, locomolcd_dev->mapbase + LOCOMO_TC);


 locomo_writel(6, locomolcd_dev->mapbase + LOCOMO_CPSD);


 locomo_writel((0x04 | 0x01), locomolcd_dev->mapbase + LOCOMO_TC);
 mdelay(10);

 locomo_gpio_set_dir(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_MOD, 0);
 locomo_gpio_write(locomolcd_dev->dev.parent, LOCOMO_GPIO_LCD_MOD, 1);
}
