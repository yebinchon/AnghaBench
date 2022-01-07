
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct speedtch_instance_data {scalar_t__ poll_delay; int usbatm; int status_check_timer; int status_check_work; } ;


 scalar_t__ MAX_POLL_DELAY ;
 int atm_warn (int ,char*) ;
 struct speedtch_instance_data* from_timer (int ,struct timer_list*,int ) ;
 struct speedtch_instance_data* instance ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int schedule_work (int *) ;
 int status_check_timer ;

__attribute__((used)) static void speedtch_status_poll(struct timer_list *t)
{
 struct speedtch_instance_data *instance = from_timer(instance, t,
                   status_check_timer);

 schedule_work(&instance->status_check_work);


 if (instance->poll_delay < MAX_POLL_DELAY)
  mod_timer(&instance->status_check_timer, jiffies + msecs_to_jiffies(instance->poll_delay));
 else
  atm_warn(instance->usbatm, "Too many failures - disabling line status polling\n");
}
