
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int regmap; } ;


 int AL5_MCU_RESET ;
 int AL5_MCU_RESET_MODE ;
 int AL5_MCU_RESET_MODE_SLEEP ;
 int AL5_MCU_RESET_SOFT ;
 int allegro_mcu_wait_for_sleep (struct allegro_dev*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int allegro_mcu_reset(struct allegro_dev *dev)
{
 int err;

 err = regmap_write(dev->regmap,
      AL5_MCU_RESET_MODE, AL5_MCU_RESET_MODE_SLEEP);
 if (err < 0)
  return err;

 err = regmap_write(dev->regmap, AL5_MCU_RESET, AL5_MCU_RESET_SOFT);
 if (err < 0)
  return err;

 return allegro_mcu_wait_for_sleep(dev);
}
