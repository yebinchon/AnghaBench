
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_loopback {int connection; int id; int dev; int file; int kfifo_lat; int task; } ;
struct gb_bundle {int dummy; } ;
struct TYPE_2__ {int lock; int count; } ;


 int IS_ERR_OR_NULL (int ) ;
 int debugfs_remove (int ) ;
 int device_unregister (int ) ;
 int gb_connection_destroy (int ) ;
 int gb_connection_disable (int ) ;
 int gb_connection_latency_tag_disable (int ) ;
 TYPE_1__ gb_dev ;
 int gb_loopback_async_wait_all (struct gb_loopback*) ;
 int gb_pm_runtime_get_noresume (struct gb_bundle*) ;
 int gb_pm_runtime_get_sync (struct gb_bundle*) ;
 struct gb_loopback* greybus_get_drvdata (struct gb_bundle*) ;
 int ida_simple_remove (int *,int ) ;
 int kfifo_free (int *) ;
 int kfree (struct gb_loopback*) ;
 int kthread_stop (int ) ;
 int loopback_ida ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gb_loopback_disconnect(struct gb_bundle *bundle)
{
 struct gb_loopback *gb = greybus_get_drvdata(bundle);
 unsigned long flags;
 int ret;

 ret = gb_pm_runtime_get_sync(bundle);
 if (ret)
  gb_pm_runtime_get_noresume(bundle);

 gb_connection_disable(gb->connection);

 if (!IS_ERR_OR_NULL(gb->task))
  kthread_stop(gb->task);

 kfifo_free(&gb->kfifo_lat);
 gb_connection_latency_tag_disable(gb->connection);
 debugfs_remove(gb->file);






 gb_loopback_async_wait_all(gb);

 spin_lock_irqsave(&gb_dev.lock, flags);
 gb_dev.count--;
 spin_unlock_irqrestore(&gb_dev.lock, flags);

 device_unregister(gb->dev);
 ida_simple_remove(&loopback_ida, gb->id);

 gb_connection_destroy(gb->connection);
 kfree(gb);
}
