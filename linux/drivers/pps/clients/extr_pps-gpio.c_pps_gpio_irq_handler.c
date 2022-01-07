
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_gpio_device_data {int pps; scalar_t__ assert_falling_edge; scalar_t__ capture_clear; int gpio_pin; } ;
struct pps_event_time {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PPS_CAPTUREASSERT ;
 int PPS_CAPTURECLEAR ;
 int gpiod_get_value (int ) ;
 int pps_event (int ,struct pps_event_time*,int ,void*) ;
 int pps_get_ts (struct pps_event_time*) ;

__attribute__((used)) static irqreturn_t pps_gpio_irq_handler(int irq, void *data)
{
 const struct pps_gpio_device_data *info;
 struct pps_event_time ts;
 int rising_edge;


 pps_get_ts(&ts);

 info = data;

 rising_edge = gpiod_get_value(info->gpio_pin);
 if ((rising_edge && !info->assert_falling_edge) ||
   (!rising_edge && info->assert_falling_edge))
  pps_event(info->pps, &ts, PPS_CAPTUREASSERT, data);
 else if (info->capture_clear &&
   ((rising_edge && info->assert_falling_edge) ||
   (!rising_edge && !info->assert_falling_edge)))
  pps_event(info->pps, &ts, PPS_CAPTURECLEAR, data);

 return IRQ_HANDLED;
}
