
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_descriptor_cport {scalar_t__ protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_power_supplies {int supplies_lock; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GREYBUS_PROTOCOL_POWER_SUPPLY ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int _gb_power_supplies_release (struct gb_power_supplies*) ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_enable_tx (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_power_supplies*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int gb_power_supplies_register (struct gb_power_supplies*) ;
 int gb_power_supplies_setup (struct gb_power_supplies*) ;
 int gb_supplies_request_handler ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_power_supplies*) ;
 struct gb_power_supplies* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gb_power_supply_probe(struct gb_bundle *bundle,
     const struct greybus_bundle_id *id)
{
 struct greybus_descriptor_cport *cport_desc;
 struct gb_connection *connection;
 struct gb_power_supplies *supplies;
 int ret;

 if (bundle->num_cports != 1)
  return -ENODEV;

 cport_desc = &bundle->cport_desc[0];
 if (cport_desc->protocol_id != GREYBUS_PROTOCOL_POWER_SUPPLY)
  return -ENODEV;

 supplies = kzalloc(sizeof(*supplies), GFP_KERNEL);
 if (!supplies)
  return -ENOMEM;

 connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
       gb_supplies_request_handler);
 if (IS_ERR(connection)) {
  ret = PTR_ERR(connection);
  goto out;
 }

 supplies->connection = connection;
 gb_connection_set_data(connection, supplies);

 mutex_init(&supplies->supplies_lock);

 greybus_set_drvdata(bundle, supplies);


 ret = gb_connection_enable_tx(connection);
 if (ret)
  goto error_connection_destroy;

 ret = gb_power_supplies_setup(supplies);
 if (ret < 0)
  goto error_connection_disable;


 ret = gb_connection_enable(connection);
 if (ret)
  goto error_connection_disable;

 ret = gb_power_supplies_register(supplies);
 if (ret < 0)
  goto error_connection_disable;

 gb_pm_runtime_put_autosuspend(bundle);
 return 0;

error_connection_disable:
 gb_connection_disable(connection);
error_connection_destroy:
 gb_connection_destroy(connection);
out:
 _gb_power_supplies_release(supplies);
 return ret;
}
