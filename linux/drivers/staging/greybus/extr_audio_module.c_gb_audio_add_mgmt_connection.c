
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_descriptor_cport {int id; } ;
struct gbaudio_module_info {struct gb_connection* mgmt_connection; } ;
struct gb_connection {int dummy; } ;
struct gb_bundle {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int dev_err (int *,char*) ;
 struct gb_connection* gb_connection_create (struct gb_bundle*,int ,int ) ;
 int gbaudio_codec_request_handler ;
 int greybus_set_drvdata (struct gb_bundle*,struct gbaudio_module_info*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int gb_audio_add_mgmt_connection(struct gbaudio_module_info *gbmodule,
    struct greybus_descriptor_cport *cport_desc,
    struct gb_bundle *bundle)
{
 struct gb_connection *connection;


 if (gbmodule->mgmt_connection) {
  dev_err(&bundle->dev,
   "Can't have multiple Management connections\n");
  return -ENODEV;
 }

 connection = gb_connection_create(bundle, le16_to_cpu(cport_desc->id),
       gbaudio_codec_request_handler);
 if (IS_ERR(connection))
  return PTR_ERR(connection);

 greybus_set_drvdata(bundle, gbmodule);
 gbmodule->mgmt_connection = connection;

 return 0;
}
