
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_queue_notify_config {int dummy; } ;
struct knav_queue {TYPE_2__* inst; } ;
typedef enum knav_queue_ctrl_cmd { ____Placeholder_knav_queue_ctrl_cmd } knav_queue_ctrl_cmd ;
struct TYPE_4__ {int id; TYPE_1__* kdev; } ;
struct TYPE_3__ {int base_id; } ;


 int ENOTSUPP ;






 int knav_queue_disable_notifier (struct knav_queue*) ;
 int knav_queue_enable_notifier (struct knav_queue*) ;
 int knav_queue_flush (struct knav_queue*) ;
 int knav_queue_get_count (struct knav_queue*) ;
 int knav_queue_set_notifier (struct knav_queue*,struct knav_queue_notify_config*) ;

int knav_queue_device_control(void *qhandle, enum knav_queue_ctrl_cmd cmd,
    unsigned long arg)
{
 struct knav_queue *qh = qhandle;
 struct knav_queue_notify_config *cfg;
 int ret;

 switch ((int)cmd) {
 case 129:
  ret = qh->inst->kdev->base_id + qh->inst->id;
  break;

 case 131:
  ret = knav_queue_flush(qh);
  break;

 case 128:
  cfg = (void *)arg;
  ret = knav_queue_set_notifier(qh, cfg);
  break;

 case 132:
  ret = knav_queue_enable_notifier(qh);
  break;

 case 133:
  ret = knav_queue_disable_notifier(qh);
  break;

 case 130:
  ret = knav_queue_get_count(qh);
  break;

 default:
  ret = -ENOTSUPP;
  break;
 }
 return ret;
}
