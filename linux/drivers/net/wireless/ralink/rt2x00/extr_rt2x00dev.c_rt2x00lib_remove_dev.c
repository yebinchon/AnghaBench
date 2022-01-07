
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int drv_data; int txstatus_fifo; scalar_t__ workqueue; int autowake_tasklet; int rxdone_tasklet; int tbtt_tasklet; int pretbtt_tasklet; int txstatus_tasklet; int txstatus_timer; int sleep_work; int autowakeup_work; int intf_work; int flags; } ;


 int DEVICE_STATE_PRESENT ;
 int REQUIRE_DELAYED_RFKILL ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (scalar_t__) ;
 int hrtimer_cancel (int *) ;
 int kfifo_free (int *) ;
 int kfree (int ) ;
 int rt2x00_has_cap_flag (struct rt2x00_dev*,int ) ;
 int rt2x00debug_deregister (struct rt2x00_dev*) ;
 int rt2x00leds_unregister (struct rt2x00_dev*) ;
 int rt2x00lib_disable_radio (struct rt2x00_dev*) ;
 int rt2x00lib_free_firmware (struct rt2x00_dev*) ;
 int rt2x00lib_remove_hw (struct rt2x00_dev*) ;
 int rt2x00lib_uninitialize (struct rt2x00_dev*) ;
 int rt2x00queue_free (struct rt2x00_dev*) ;
 int rt2x00rfkill_unregister (struct rt2x00_dev*) ;
 int tasklet_kill (int *) ;

void rt2x00lib_remove_dev(struct rt2x00_dev *rt2x00dev)
{
 clear_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags);




 if (!rt2x00_has_cap_flag(rt2x00dev, REQUIRE_DELAYED_RFKILL))
  rt2x00rfkill_unregister(rt2x00dev);




 rt2x00lib_disable_radio(rt2x00dev);




 cancel_work_sync(&rt2x00dev->intf_work);
 cancel_delayed_work_sync(&rt2x00dev->autowakeup_work);
 cancel_work_sync(&rt2x00dev->sleep_work);

 hrtimer_cancel(&rt2x00dev->txstatus_timer);




 tasklet_kill(&rt2x00dev->txstatus_tasklet);
 tasklet_kill(&rt2x00dev->pretbtt_tasklet);
 tasklet_kill(&rt2x00dev->tbtt_tasklet);
 tasklet_kill(&rt2x00dev->rxdone_tasklet);
 tasklet_kill(&rt2x00dev->autowake_tasklet);




 rt2x00lib_uninitialize(rt2x00dev);

 if (rt2x00dev->workqueue)
  destroy_workqueue(rt2x00dev->workqueue);




 kfifo_free(&rt2x00dev->txstatus_fifo);




 rt2x00debug_deregister(rt2x00dev);
 rt2x00leds_unregister(rt2x00dev);




 rt2x00lib_remove_hw(rt2x00dev);




 rt2x00lib_free_firmware(rt2x00dev);




 rt2x00queue_free(rt2x00dev);




 kfree(rt2x00dev->drv_data);
}
