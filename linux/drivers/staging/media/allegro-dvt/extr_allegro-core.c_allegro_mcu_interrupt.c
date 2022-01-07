
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int regmap; } ;


 int AL5_MCU_INTERRUPT ;
 int BIT (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void allegro_mcu_interrupt(struct allegro_dev *dev)
{
 regmap_write(dev->regmap, AL5_MCU_INTERRUPT, BIT(0));
}
