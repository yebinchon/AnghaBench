
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int function; } ;
struct TYPE_4__ {int release; int groups; int class; } ;
struct rtc_device {int set_offset_nsec; int irq_freq; int max_user_freq; scalar_t__ pie_enabled; TYPE_1__ pie_timer; int uie_rtctimer; int aie_timer; int irqwork; int timerqueue; int irq_queue; int irq_lock; int ops_lock; TYPE_2__ dev; } ;


 int CLOCK_MONOTONIC ;
 int GFP_KERNEL ;
 int HRTIMER_MODE_REL ;
 int INIT_WORK (int *,int ) ;
 int NSEC_PER_SEC ;
 int device_initialize (TYPE_2__*) ;
 int hrtimer_init (TYPE_1__*,int ,int ) ;
 int init_waitqueue_head (int *) ;
 struct rtc_device* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rtc_aie_update_irq ;
 int rtc_class ;
 int rtc_device_release ;
 int rtc_get_dev_attribute_groups () ;
 int rtc_pie_update_irq ;
 int rtc_timer_do_work ;
 int rtc_timer_init (int *,int ,struct rtc_device*) ;
 int rtc_uie_update_irq ;
 int spin_lock_init (int *) ;
 int timerqueue_init_head (int *) ;

__attribute__((used)) static struct rtc_device *rtc_allocate_device(void)
{
 struct rtc_device *rtc;

 rtc = kzalloc(sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return ((void*)0);

 device_initialize(&rtc->dev);


 rtc->set_offset_nsec = NSEC_PER_SEC / 2;

 rtc->irq_freq = 1;
 rtc->max_user_freq = 64;
 rtc->dev.class = rtc_class;
 rtc->dev.groups = rtc_get_dev_attribute_groups();
 rtc->dev.release = rtc_device_release;

 mutex_init(&rtc->ops_lock);
 spin_lock_init(&rtc->irq_lock);
 init_waitqueue_head(&rtc->irq_queue);


 timerqueue_init_head(&rtc->timerqueue);
 INIT_WORK(&rtc->irqwork, rtc_timer_do_work);

 rtc_timer_init(&rtc->aie_timer, rtc_aie_update_irq, rtc);

 rtc_timer_init(&rtc->uie_rtctimer, rtc_uie_update_irq, rtc);

 hrtimer_init(&rtc->pie_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 rtc->pie_timer.function = rtc_pie_update_irq;
 rtc->pie_enabled = 0;

 return rtc;
}
