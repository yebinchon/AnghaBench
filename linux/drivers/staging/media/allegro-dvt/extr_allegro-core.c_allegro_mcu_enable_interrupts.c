
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int regmap; } ;


 int AL5_ITC_CPU_IRQ_MSK ;
 int BIT (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int allegro_mcu_enable_interrupts(struct allegro_dev *dev)
{
 return regmap_write(dev->regmap, AL5_ITC_CPU_IRQ_MSK, BIT(0));
}
