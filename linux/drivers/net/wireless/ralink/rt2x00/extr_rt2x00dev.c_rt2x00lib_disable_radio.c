
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {TYPE_2__* ops; int flags; } ;
struct TYPE_4__ {TYPE_1__* lib; } ;
struct TYPE_3__ {int (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;


 int DEVICE_STATE_ENABLED_RADIO ;
 int STATE_RADIO_IRQ_OFF ;
 int STATE_RADIO_OFF ;
 int rt2x00led_led_activity (struct rt2x00_dev*,int) ;
 int rt2x00leds_led_radio (struct rt2x00_dev*,int) ;
 int rt2x00link_stop_tuner (struct rt2x00_dev*) ;
 int rt2x00link_stop_watchdog (struct rt2x00_dev*) ;
 int rt2x00queue_flush_queues (struct rt2x00_dev*,int) ;
 int rt2x00queue_stop_queues (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,int ) ;
 int stub2 (struct rt2x00_dev*,int ) ;
 int test_and_clear_bit (int ,int *) ;

void rt2x00lib_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 if (!test_and_clear_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return;




 rt2x00link_stop_watchdog(rt2x00dev);




 rt2x00link_stop_tuner(rt2x00dev);
 rt2x00queue_stop_queues(rt2x00dev);
 rt2x00queue_flush_queues(rt2x00dev, 1);




 rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_OFF);
 rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_IRQ_OFF);
 rt2x00led_led_activity(rt2x00dev, 0);
 rt2x00leds_led_radio(rt2x00dev, 0);
}
