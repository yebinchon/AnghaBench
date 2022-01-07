
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int regmap; } ;


 int AL5_MCU_STA ;
 unsigned int AL5_MCU_STA_SLEEP ;
 int AL5_MCU_WAKEUP ;
 int BIT (int ) ;
 int ETIMEDOUT ;
 int cpu_relax () ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int allegro_mcu_start(struct allegro_dev *dev)
{
 unsigned long timeout;
 unsigned int status;
 int err;

 err = regmap_write(dev->regmap, AL5_MCU_WAKEUP, BIT(0));
 if (err)
  return err;

 timeout = jiffies + msecs_to_jiffies(100);
 while (regmap_read(dev->regmap, AL5_MCU_STA, &status) == 0 &&
        status == AL5_MCU_STA_SLEEP) {
  if (time_after(jiffies, timeout))
   return -ETIMEDOUT;
  cpu_relax();
 }

 err = regmap_write(dev->regmap, AL5_MCU_WAKEUP, 0);
 if (err)
  return err;

 return 0;
}
