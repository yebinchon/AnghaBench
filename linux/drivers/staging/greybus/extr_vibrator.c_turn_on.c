
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct gb_vibrator_device {int delayed_work; TYPE_1__* connection; } ;
struct gb_bundle {int dummy; } ;
struct TYPE_2__ {struct gb_bundle* bundle; } ;


 int GB_VIBRATOR_TYPE_ON ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int gb_operation_sync (TYPE_1__*,int ,int *,int ,int *,int ) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int turn_off (struct gb_vibrator_device*) ;

__attribute__((used)) static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
{
 struct gb_bundle *bundle = vib->connection->bundle;
 int ret;

 ret = gb_pm_runtime_get_sync(bundle);
 if (ret)
  return ret;


 if (cancel_delayed_work_sync(&vib->delayed_work))
  turn_off(vib);

 ret = gb_operation_sync(vib->connection, GB_VIBRATOR_TYPE_ON,
    ((void*)0), 0, ((void*)0), 0);
 if (ret) {
  gb_pm_runtime_put_autosuspend(bundle);
  return ret;
 }

 schedule_delayed_work(&vib->delayed_work, msecs_to_jiffies(timeout_ms));

 return 0;
}
