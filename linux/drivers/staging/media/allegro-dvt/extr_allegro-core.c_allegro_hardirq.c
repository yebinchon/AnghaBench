
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_dev {int regmap; } ;
typedef int irqreturn_t ;


 int AL5_ITC_CPU_IRQ_CLR ;
 int AL5_ITC_CPU_IRQ_STA ;
 unsigned int AL5_ITC_CPU_IRQ_STA_TRIGGERED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static irqreturn_t allegro_hardirq(int irq, void *data)
{
 struct allegro_dev *dev = data;
 unsigned int status;

 regmap_read(dev->regmap, AL5_ITC_CPU_IRQ_STA, &status);
 if (!(status & AL5_ITC_CPU_IRQ_STA_TRIGGERED))
  return IRQ_NONE;

 regmap_write(dev->regmap, AL5_ITC_CPU_IRQ_CLR, status);

 return IRQ_WAKE_THREAD;
}
