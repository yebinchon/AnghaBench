
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct greybus_descriptor_cport {scalar_t__ protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_loopback_transfer_request {int dummy; } ;
struct gb_loopback {int id; int file; int kfifo_lat; struct gb_connection* task; int mutex; struct gb_connection* dev; void* timeout_max; void* timeout_min; int outstanding_operations; int wq_completion; int wq; struct gb_connection* connection; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;
struct device {TYPE_1__* bundle; } ;
typedef int name ;
struct TYPE_4__ {int size_max; int lock; int count; int root; } ;
struct TYPE_3__ {int dev; } ;


 int DEBUGFS_NAMELEN ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GB_LOOPBACK_TIMEOUT_MAX ;
 int GB_LOOPBACK_TIMEOUT_MIN ;
 int GFP_KERNEL ;
 scalar_t__ GREYBUS_PROTOCOL_LOOPBACK ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct gb_connection*) ;
 int S_IFREG ;
 int atomic_set (int *,int ) ;
 int debugfs_create_file (char*,int,int ,struct gb_loopback*,int *) ;
 int debugfs_remove (int ) ;
 char* dev_name (int *) ;
 struct gb_connection* device_create_with_groups (int *,int *,int ,struct gb_loopback*,int ,char*,int) ;
 int device_unregister (struct gb_connection*) ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_latency_tag_enable (struct gb_connection*) ;
 TYPE_2__ gb_dev ;
 int gb_loopback_dbgfs_latency_fops ;
 int gb_loopback_fn ;
 int gb_loopback_request_handler ;
 int gb_loopback_reset_stats (struct gb_loopback*) ;
 int gb_operation_get_payload_size_max (struct gb_connection*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_loopback*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_waitqueue_head (int *) ;
 void* jiffies_to_usecs (int ) ;
 scalar_t__ kfifo_alloc (int *,int,int ) ;
 int kfifo_depth ;
 int kfifo_free (int *) ;
 int kfree (struct gb_loopback*) ;
 struct gb_connection* kthread_run (int ,struct gb_loopback*,char*) ;
 struct gb_loopback* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int loopback_class ;
 int loopback_groups ;
 int loopback_ida ;
 int mutex_init (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int gb_loopback_probe(struct gb_bundle *bundle,
        const struct greybus_bundle_id *id)
{
 struct greybus_descriptor_cport *cport_desc;
 struct gb_connection *connection;
 struct gb_loopback *gb;
 struct device *dev;
 int retval;
 char name[DEBUGFS_NAMELEN];
 unsigned long flags;

 if (bundle->num_cports != 1)
  return -ENODEV;

 cport_desc = &bundle->cport_desc[0];
 if (cport_desc->protocol_id != GREYBUS_PROTOCOL_LOOPBACK)
  return -ENODEV;

 gb = kzalloc(sizeof(*gb), GFP_KERNEL);
 if (!gb)
  return -ENOMEM;

 connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
       gb_loopback_request_handler);
 if (IS_ERR(connection)) {
  retval = PTR_ERR(connection);
  goto out_kzalloc;
 }

 gb->connection = connection;
 greybus_set_drvdata(bundle, gb);

 init_waitqueue_head(&gb->wq);
 init_waitqueue_head(&gb->wq_completion);
 atomic_set(&gb->outstanding_operations, 0);
 gb_loopback_reset_stats(gb);


 gb->timeout_min = jiffies_to_usecs(GB_LOOPBACK_TIMEOUT_MIN);
 gb->timeout_max = jiffies_to_usecs(GB_LOOPBACK_TIMEOUT_MAX);

 if (!gb_dev.count) {

  gb_dev.size_max = gb_operation_get_payload_size_max(connection);
  if (gb_dev.size_max <=
   sizeof(struct gb_loopback_transfer_request)) {
   retval = -EINVAL;
   goto out_connection_destroy;
  }
  gb_dev.size_max -= sizeof(struct gb_loopback_transfer_request);
 }


 snprintf(name, sizeof(name), "raw_latency_%s",
   dev_name(&connection->bundle->dev));
 gb->file = debugfs_create_file(name, S_IFREG | 0444, gb_dev.root, gb,
           &gb_loopback_dbgfs_latency_fops);

 gb->id = ida_simple_get(&loopback_ida, 0, 0, GFP_KERNEL);
 if (gb->id < 0) {
  retval = gb->id;
  goto out_debugfs_remove;
 }

 retval = gb_connection_enable(connection);
 if (retval)
  goto out_ida_remove;

 dev = device_create_with_groups(&loopback_class,
     &connection->bundle->dev,
     MKDEV(0, 0), gb, loopback_groups,
     "gb_loopback%d", gb->id);
 if (IS_ERR(dev)) {
  retval = PTR_ERR(dev);
  goto out_connection_disable;
 }
 gb->dev = dev;


 if (kfifo_alloc(&gb->kfifo_lat, kfifo_depth * sizeof(u32),
   GFP_KERNEL)) {
  retval = -ENOMEM;
  goto out_conn;
 }

 mutex_init(&gb->mutex);
 gb->task = kthread_run(gb_loopback_fn, gb, "gb_loopback");
 if (IS_ERR(gb->task)) {
  retval = PTR_ERR(gb->task);
  goto out_kfifo;
 }

 spin_lock_irqsave(&gb_dev.lock, flags);
 gb_dev.count++;
 spin_unlock_irqrestore(&gb_dev.lock, flags);

 gb_connection_latency_tag_enable(connection);

 gb_pm_runtime_put_autosuspend(bundle);

 return 0;

out_kfifo:
 kfifo_free(&gb->kfifo_lat);
out_conn:
 device_unregister(dev);
out_connection_disable:
 gb_connection_disable(connection);
out_ida_remove:
 ida_simple_remove(&loopback_ida, gb->id);
out_debugfs_remove:
 debugfs_remove(gb->file);
out_connection_destroy:
 gb_connection_destroy(connection);
out_kzalloc:
 kfree(gb);

 return retval;
}
