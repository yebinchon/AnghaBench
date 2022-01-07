
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_vibrator_device {int connection; int minor; int dev; int delayed_work; } ;
struct gb_bundle {int dummy; } ;


 scalar_t__ cancel_delayed_work_sync (int *) ;
 int device_unregister (int ) ;
 int gb_connection_destroy (int ) ;
 int gb_connection_disable (int ) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_vibrator_device* greybus_get_drvdata (struct gb_bundle*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct gb_vibrator_device*) ;
 int minors ;
 int turn_off (struct gb_vibrator_device*) ;

__attribute__((used)) static void gb_vibrator_disconnect(struct gb_bundle *bundle)
{
 struct gb_vibrator_device *vib = greybus_get_drvdata(bundle);
 int ret;

 ret = gb_pm_runtime_get_sync(bundle);
 if (ret)
  gb_pm_runtime_get_noresume(bundle);

 if (cancel_delayed_work_sync(&vib->delayed_work))
  turn_off(vib);

 device_unregister(vib->dev);
 ida_simple_remove(&minors, vib->minor);
 gb_connection_disable(vib->connection);
 gb_connection_destroy(vib->connection);
 kfree(vib);
}
