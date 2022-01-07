
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct greybus_descriptor_cport {scalar_t__ protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_connection {TYPE_1__* bundle; } ;
struct gb_bundle {int num_cports; int dev; struct greybus_descriptor_cport* cport_desc; } ;
struct gb_bootrom {int dwork; int mutex; struct gb_connection* connection; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GB_BOOTROM_TYPE_AP_READY ;
 int GFP_KERNEL ;
 scalar_t__ GREYBUS_PROTOCOL_BOOTROM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int NEXT_REQ_FIRMWARE_SIZE ;
 int NEXT_REQ_TIMEOUT_MS ;
 int PTR_ERR (struct gb_connection*) ;
 int bootrom_es2_fixup_vid_pid (struct gb_bootrom*) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 int gb_bootrom_cancel_timeout (struct gb_bootrom*) ;
 int gb_bootrom_get_version (struct gb_bootrom*) ;
 int gb_bootrom_request_handler ;
 int gb_bootrom_set_timeout (struct gb_bootrom*,int ,int ) ;
 int gb_bootrom_timedout ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int ) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_enable_tx (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_bootrom*) ;
 int gb_operation_sync (struct gb_connection*,int ,int *,int ,int *,int ) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_bootrom*) ;
 int kfree (struct gb_bootrom*) ;
 struct gb_bootrom* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gb_bootrom_probe(struct gb_bundle *bundle,
       const struct greybus_bundle_id *id)
{
 struct greybus_descriptor_cport *cport_desc;
 struct gb_connection *connection;
 struct gb_bootrom *bootrom;
 int ret;

 if (bundle->num_cports != 1)
  return -ENODEV;

 cport_desc = &bundle->cport_desc[0];
 if (cport_desc->protocol_id != GREYBUS_PROTOCOL_BOOTROM)
  return -ENODEV;

 bootrom = kzalloc(sizeof(*bootrom), GFP_KERNEL);
 if (!bootrom)
  return -ENOMEM;

 connection = gb_connection_create(bundle,
       le16_to_cpu(cport_desc->id),
       gb_bootrom_request_handler);
 if (IS_ERR(connection)) {
  ret = PTR_ERR(connection);
  goto err_free_bootrom;
 }

 gb_connection_set_data(connection, bootrom);

 bootrom->connection = connection;

 mutex_init(&bootrom->mutex);
 INIT_DELAYED_WORK(&bootrom->dwork, gb_bootrom_timedout);
 greybus_set_drvdata(bundle, bootrom);

 ret = gb_connection_enable_tx(connection);
 if (ret)
  goto err_connection_destroy;

 ret = gb_bootrom_get_version(bootrom);
 if (ret)
  goto err_connection_disable;

 bootrom_es2_fixup_vid_pid(bootrom);

 ret = gb_connection_enable(connection);
 if (ret)
  goto err_connection_disable;


 gb_bootrom_set_timeout(bootrom, NEXT_REQ_FIRMWARE_SIZE,
          NEXT_REQ_TIMEOUT_MS);


 ret = gb_operation_sync(connection, GB_BOOTROM_TYPE_AP_READY, ((void*)0), 0,
    ((void*)0), 0);
 if (ret) {
  dev_err(&connection->bundle->dev,
   "failed to send AP READY: %d\n", ret);
  goto err_cancel_timeout;
 }

 dev_dbg(&bundle->dev, "AP_READY sent\n");

 return 0;

err_cancel_timeout:
 gb_bootrom_cancel_timeout(bootrom);
err_connection_disable:
 gb_connection_disable(connection);
err_connection_destroy:
 gb_connection_destroy(connection);
err_free_bootrom:
 kfree(bootrom);

 return ret;
}
