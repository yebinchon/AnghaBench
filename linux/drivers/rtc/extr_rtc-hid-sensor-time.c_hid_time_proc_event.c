
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_time_state {int comp_last_time; int lock_last_time; int time_buf; int last_time; } ;
struct hid_sensor_hub_device {int dummy; } ;


 int complete (int *) ;
 struct hid_time_state* platform_get_drvdata (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int hid_time_proc_event(struct hid_sensor_hub_device *hsdev,
    unsigned usage_id, void *priv)
{
 unsigned long flags;
 struct hid_time_state *time_state = platform_get_drvdata(priv);

 spin_lock_irqsave(&time_state->lock_last_time, flags);
 time_state->last_time = time_state->time_buf;
 spin_unlock_irqrestore(&time_state->lock_last_time, flags);
 complete(&time_state->comp_last_time);
 return 0;
}
