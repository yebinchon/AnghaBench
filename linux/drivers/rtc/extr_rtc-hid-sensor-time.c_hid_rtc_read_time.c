
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct TYPE_3__ {int hsdev; } ;
struct hid_time_state {int lock_last_time; struct rtc_time last_time; int comp_last_time; TYPE_2__* info; TYPE_1__ common_attributes; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int report_id; } ;


 int EIO ;
 int HID_USAGE_SENSOR_TIME ;
 int HZ ;
 int SENSOR_HUB_SYNC ;
 struct hid_time_state* dev_get_drvdata (struct device*) ;
 int * hid_time_addresses ;
 int reinit_completion (int *) ;
 int sensor_hub_input_attr_get_raw_value (int ,int ,int ,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_killable_timeout (int *,int) ;

__attribute__((used)) static int hid_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long flags;
 struct hid_time_state *time_state = dev_get_drvdata(dev);
 int ret;

 reinit_completion(&time_state->comp_last_time);

 sensor_hub_input_attr_get_raw_value(time_state->common_attributes.hsdev,
   HID_USAGE_SENSOR_TIME, hid_time_addresses[0],
   time_state->info[0].report_id, SENSOR_HUB_SYNC, 0);

 ret = wait_for_completion_killable_timeout(
   &time_state->comp_last_time, HZ*6);
 if (ret > 0) {

  spin_lock_irqsave(&time_state->lock_last_time, flags);
  *tm = time_state->last_time;
  spin_unlock_irqrestore(&time_state->lock_last_time, flags);
  return 0;
 }
 if (!ret)
  return -EIO;
 return ret;
}
