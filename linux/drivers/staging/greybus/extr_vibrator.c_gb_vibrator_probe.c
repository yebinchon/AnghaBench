
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_descriptor_cport {scalar_t__ protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_vibrator_device {int minor; int delayed_work; struct gb_connection* dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; int dev; struct greybus_descriptor_cport* cport_desc; } ;
typedef struct gb_connection device ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GREYBUS_PROTOCOL_VIBRATOR ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct gb_connection*) ;
 struct gb_connection* device_create (int *,int *,int ,struct gb_vibrator_device*,char*,int) ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int *) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_vibrator_device*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int gb_vibrator_worker ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_vibrator_device*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kfree (struct gb_vibrator_device*) ;
 struct gb_vibrator_device* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int minors ;
 int vibrator_class ;

__attribute__((used)) static int gb_vibrator_probe(struct gb_bundle *bundle,
        const struct greybus_bundle_id *id)
{
 struct greybus_descriptor_cport *cport_desc;
 struct gb_connection *connection;
 struct gb_vibrator_device *vib;
 struct device *dev;
 int retval;

 if (bundle->num_cports != 1)
  return -ENODEV;

 cport_desc = &bundle->cport_desc[0];
 if (cport_desc->protocol_id != GREYBUS_PROTOCOL_VIBRATOR)
  return -ENODEV;

 vib = kzalloc(sizeof(*vib), GFP_KERNEL);
 if (!vib)
  return -ENOMEM;

 connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
       ((void*)0));
 if (IS_ERR(connection)) {
  retval = PTR_ERR(connection);
  goto err_free_vib;
 }
 gb_connection_set_data(connection, vib);

 vib->connection = connection;

 greybus_set_drvdata(bundle, vib);

 retval = gb_connection_enable(connection);
 if (retval)
  goto err_connection_destroy;






 vib->minor = ida_simple_get(&minors, 0, 0, GFP_KERNEL);
 if (vib->minor < 0) {
  retval = vib->minor;
  goto err_connection_disable;
 }
 dev = device_create(&vibrator_class, &bundle->dev,
       MKDEV(0, 0), vib, "vibrator%d", vib->minor);
 if (IS_ERR(dev)) {
  retval = -EINVAL;
  goto err_ida_remove;
 }
 vib->dev = dev;

 INIT_DELAYED_WORK(&vib->delayed_work, gb_vibrator_worker);

 gb_pm_runtime_put_autosuspend(bundle);

 return 0;

err_ida_remove:
 ida_simple_remove(&minors, vib->minor);
err_connection_disable:
 gb_connection_disable(connection);
err_connection_destroy:
 gb_connection_destroy(connection);
err_free_vib:
 kfree(vib);

 return retval;
}
