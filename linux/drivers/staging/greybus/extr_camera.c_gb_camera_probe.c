
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct greybus_descriptor_cport {int protocol_id; int id; } ;
struct greybus_bundle_id {int dummy; } ;
struct gb_connection {TYPE_1__* intf; } ;
struct TYPE_4__ {int release; int interface_id; int * ops; struct gb_camera* priv; } ;
struct gb_camera {struct gb_bundle* bundle; TYPE_2__ module; struct gb_connection* connection; scalar_t__ data_cport_id; int state; int mutex; } ;
struct gb_bundle {int num_cports; struct greybus_descriptor_cport* cport_desc; } ;
struct TYPE_3__ {int interface_id; } ;


 int ENODEV ;
 int ENOMEM ;
 int GB_CAMERA_STATE_UNCONFIGURED ;
 int GFP_KERNEL ;


 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int gb_cam_ops ;
 int gb_camera_cleanup (struct gb_camera*) ;
 int gb_camera_debugfs_init (struct gb_camera*) ;
 int gb_camera_register (TYPE_2__*) ;
 int gb_camera_release_module ;
 int gb_camera_request_handler ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,scalar_t__,int ) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_camera*) ;
 int gb_pm_runtime_put_autosuspend (struct gb_bundle*) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gb_camera*) ;
 int kfree (struct gb_camera*) ;
 struct gb_camera* kzalloc (int,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gb_camera_probe(struct gb_bundle *bundle,
      const struct greybus_bundle_id *id)
{
 struct gb_connection *conn;
 struct gb_camera *gcam;
 u16 mgmt_cport_id = 0;
 u16 data_cport_id = 0;
 unsigned int i;
 int ret;





 if (bundle->num_cports != 2)
  return -ENODEV;

 for (i = 0; i < bundle->num_cports; ++i) {
  struct greybus_descriptor_cport *desc = &bundle->cport_desc[i];

  switch (desc->protocol_id) {
  case 128:
   mgmt_cport_id = le16_to_cpu(desc->id);
   break;
  case 129:
   data_cport_id = le16_to_cpu(desc->id);
   break;
  default:
   return -ENODEV;
  }
 }

 if (!mgmt_cport_id || !data_cport_id)
  return -ENODEV;

 gcam = kzalloc(sizeof(*gcam), GFP_KERNEL);
 if (!gcam)
  return -ENOMEM;

 mutex_init(&gcam->mutex);

 gcam->bundle = bundle;
 gcam->state = GB_CAMERA_STATE_UNCONFIGURED;
 gcam->data_cport_id = data_cport_id;

 conn = gb_connection_create(bundle, mgmt_cport_id,
        gb_camera_request_handler);
 if (IS_ERR(conn)) {
  ret = PTR_ERR(conn);
  goto error;
 }

 gcam->connection = conn;
 gb_connection_set_data(conn, gcam);

 ret = gb_connection_enable(conn);
 if (ret)
  goto error;

 ret = gb_camera_debugfs_init(gcam);
 if (ret < 0)
  goto error;

 gcam->module.priv = gcam;
 gcam->module.ops = &gb_cam_ops;
 gcam->module.interface_id = gcam->connection->intf->interface_id;
 gcam->module.release = gb_camera_release_module;
 ret = gb_camera_register(&gcam->module);
 if (ret < 0)
  goto error;

 greybus_set_drvdata(bundle, gcam);

 gb_pm_runtime_put_autosuspend(gcam->bundle);

 return 0;

error:
 gb_camera_cleanup(gcam);
 kfree(gcam);
 return ret;
}
