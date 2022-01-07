
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_gpio_device_data {scalar_t__ capture_clear; scalar_t__ assert_falling_edge; } ;


 unsigned long IRQF_TRIGGER_FALLING ;
 unsigned long IRQF_TRIGGER_RISING ;

__attribute__((used)) static unsigned long
get_irqf_trigger_flags(const struct pps_gpio_device_data *data)
{
 unsigned long flags = data->assert_falling_edge ?
  IRQF_TRIGGER_FALLING : IRQF_TRIGGER_RISING;

 if (data->capture_clear) {
  flags |= ((flags & IRQF_TRIGGER_RISING) ?
    IRQF_TRIGGER_FALLING : IRQF_TRIGGER_RISING);
 }

 return flags;
}
