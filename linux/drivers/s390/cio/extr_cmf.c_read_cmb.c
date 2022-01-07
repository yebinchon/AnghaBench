
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct cmb_data {struct cmb* hw_block; } ;
struct cmb {int sample_count; int device_active_only_time; int control_unit_queuing_time; int device_disconnect_time; int function_pending_time; int device_connect_time; int ssch_rsch_count; } ;
struct ccw_device {int ccwlock; TYPE_1__* private; } ;
struct TYPE_2__ {int cmb_start_time; struct cmb_data* cmb; } ;


 int __cmb_utilization (int ,int ,int ,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int time_to_avg_nsec (int ,int ) ;

__attribute__((used)) static u64 read_cmb(struct ccw_device *cdev, int index)
{
 struct cmb_data *cmb_data;
 unsigned long flags;
 struct cmb *cmb;
 u64 ret = 0;
 u32 val;

 spin_lock_irqsave(cdev->ccwlock, flags);
 cmb_data = cdev->private->cmb;
 if (!cmb_data)
  goto out;

 cmb = cmb_data->hw_block;
 switch (index) {
 case 135:
  ret = __cmb_utilization(cmb->device_connect_time,
     cmb->function_pending_time,
     cmb->device_disconnect_time,
     cdev->private->cmb_start_time);
  goto out;
 case 128:
  ret = cmb->ssch_rsch_count;
  goto out;
 case 129:
  ret = cmb->sample_count;
  goto out;
 case 132:
  val = cmb->device_connect_time;
  break;
 case 130:
  val = cmb->function_pending_time;
  break;
 case 131:
  val = cmb->device_disconnect_time;
  break;
 case 134:
  val = cmb->control_unit_queuing_time;
  break;
 case 133:
  val = cmb->device_active_only_time;
  break;
 default:
  goto out;
 }
 ret = time_to_avg_nsec(val, cmb->sample_count);
out:
 spin_unlock_irqrestore(cdev->ccwlock, flags);
 return ret;
}
