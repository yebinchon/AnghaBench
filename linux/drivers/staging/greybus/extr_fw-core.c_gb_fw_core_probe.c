
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct greybus_descriptor_cport {int protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_fw_core {struct gb_connection* download_connection; struct gb_connection* spi_connection; struct gb_connection* cap_connection; struct gb_connection* mgmt_connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int num_cports; TYPE_1__* intf; int dev; struct greybus_descriptor_cport* cport_desc; } ;
struct TYPE_2__ {int quirks; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GB_INTERFACE_QUIRK_NO_PM ;
 int GFP_KERNEL ;




 int IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int dev_err (int *,char*,...) ;
 int gb_cap_connection_exit (struct gb_connection*) ;
 int gb_cap_connection_init (struct gb_connection*) ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int *) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_fw_download_connection_exit (struct gb_connection*) ;
 int gb_fw_download_connection_init (struct gb_connection*) ;
 int * gb_fw_download_request_handler ;
 int gb_fw_mgmt_connection_init (struct gb_connection*) ;
 int * gb_fw_mgmt_request_handler ;
 int gb_fw_spi_connection_exit (struct gb_connection*) ;
 int gb_fw_spi_connection_init (struct gb_connection*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_fw_core*) ;
 int kfree (struct gb_fw_core*) ;
 struct gb_fw_core* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_fw_core_probe(struct gb_bundle *bundle,
       const struct greybus_bundle_id *id)
{
 struct greybus_descriptor_cport *cport_desc;
 struct gb_connection *connection;
 struct gb_fw_core *fw_core;
 int ret, i;
 u16 cport_id;
 u8 protocol_id;

 fw_core = kzalloc(sizeof(*fw_core), GFP_KERNEL);
 if (!fw_core)
  return -ENOMEM;


 for (i = 0; i < bundle->num_cports; i++) {
  cport_desc = &bundle->cport_desc[i];
  cport_id = le16_to_cpu(cport_desc->id);
  protocol_id = cport_desc->protocol_id;

  switch (protocol_id) {
  case 129:

   if (fw_core->mgmt_connection) {
    dev_err(&bundle->dev,
     "multiple management CPorts found\n");
    ret = -EINVAL;
    goto err_destroy_connections;
   }

   connection = gb_connection_create(bundle, cport_id,
      gb_fw_mgmt_request_handler);
   if (IS_ERR(connection)) {
    ret = PTR_ERR(connection);
    dev_err(&bundle->dev,
     "failed to create management connection (%d)\n",
     ret);
    goto err_destroy_connections;
   }

   fw_core->mgmt_connection = connection;
   break;
  case 130:

   if (fw_core->download_connection) {
    dev_err(&bundle->dev,
     "multiple download CPorts found\n");
    ret = -EINVAL;
    goto err_destroy_connections;
   }

   connection = gb_connection_create(bundle, cport_id,
      gb_fw_download_request_handler);
   if (IS_ERR(connection)) {
    dev_err(&bundle->dev, "failed to create download connection (%ld)\n",
     PTR_ERR(connection));
   } else {
    fw_core->download_connection = connection;
   }

   break;
  case 128:

   if (fw_core->spi_connection) {
    dev_err(&bundle->dev,
     "multiple SPI CPorts found\n");
    ret = -EINVAL;
    goto err_destroy_connections;
   }

   connection = gb_connection_create(bundle, cport_id,
         ((void*)0));
   if (IS_ERR(connection)) {
    dev_err(&bundle->dev, "failed to create SPI connection (%ld)\n",
     PTR_ERR(connection));
   } else {
    fw_core->spi_connection = connection;
   }

   break;
  case 131:

   if (fw_core->cap_connection) {
    dev_err(&bundle->dev, "multiple Authentication CPorts found\n");
    ret = -EINVAL;
    goto err_destroy_connections;
   }

   connection = gb_connection_create(bundle, cport_id,
         ((void*)0));
   if (IS_ERR(connection)) {
    dev_err(&bundle->dev, "failed to create Authentication connection (%ld)\n",
     PTR_ERR(connection));
   } else {
    fw_core->cap_connection = connection;
   }

   break;
  default:
   dev_err(&bundle->dev, "invalid protocol id (0x%02x)\n",
    protocol_id);
   ret = -EINVAL;
   goto err_destroy_connections;
  }
 }


 if (!fw_core->mgmt_connection) {
  dev_err(&bundle->dev, "missing management connection\n");
  ret = -ENODEV;
  goto err_destroy_connections;
 }

 ret = gb_fw_download_connection_init(fw_core->download_connection);
 if (ret) {

  dev_err(&bundle->dev, "failed to initialize firmware download connection, disable it (%d)\n",
   ret);
  gb_connection_destroy(fw_core->download_connection);
  fw_core->download_connection = ((void*)0);
 }

 ret = gb_fw_spi_connection_init(fw_core->spi_connection);
 if (ret) {

  dev_err(&bundle->dev, "failed to initialize SPI connection, disable it (%d)\n",
   ret);
  gb_connection_destroy(fw_core->spi_connection);
  fw_core->spi_connection = ((void*)0);
 }

 ret = gb_cap_connection_init(fw_core->cap_connection);
 if (ret) {

  dev_err(&bundle->dev, "failed to initialize CAP connection, disable it (%d)\n",
   ret);
  gb_connection_destroy(fw_core->cap_connection);
  fw_core->cap_connection = ((void*)0);
 }

 ret = gb_fw_mgmt_connection_init(fw_core->mgmt_connection);
 if (ret) {

  dev_err(&bundle->dev, "failed to initialize firmware management connection, disable it (%d)\n",
   ret);
  goto err_exit_connections;
 }

 greybus_set_drvdata(bundle, fw_core);


 if (!(bundle->intf->quirks & GB_INTERFACE_QUIRK_NO_PM))
  gb_pm_runtime_put_autosuspend(bundle);

 return 0;

err_exit_connections:
 gb_cap_connection_exit(fw_core->cap_connection);
 gb_fw_spi_connection_exit(fw_core->spi_connection);
 gb_fw_download_connection_exit(fw_core->download_connection);
err_destroy_connections:
 gb_connection_destroy(fw_core->mgmt_connection);
 gb_connection_destroy(fw_core->cap_connection);
 gb_connection_destroy(fw_core->spi_connection);
 gb_connection_destroy(fw_core->download_connection);
 kfree(fw_core);

 return ret;
}
