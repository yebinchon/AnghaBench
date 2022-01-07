
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int AB3100_RTC ;
 int abx500_mask_and_set_register_interruptible (struct device*,int ,int ,int,int) ;

__attribute__((used)) static int ab3100_rtc_irq_enable(struct device *dev, unsigned int enabled)
{







 if (enabled)
  return abx500_mask_and_set_register_interruptible(dev, 0,
          AB3100_RTC, (1 << 2),
          1 << 2);
 else
  return abx500_mask_and_set_register_interruptible(dev, 0,
          AB3100_RTC, (1 << 2),
          0);
}
