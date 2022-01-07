
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct greybus_descriptor_cport {int id; } ;
struct gbaudio_module_info {int data_list; int dev; } ;
struct gbaudio_data_connection {int list; struct gb_connection* connection; int data_cport; scalar_t__ id; } ;
struct gb_connection {int intf_cport_id; } ;
struct gb_bundle {int dummy; } ;


 int ENOMEM ;
 int GB_CONNECTION_FLAG_CSD ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 int devm_kfree (int ,struct gbaudio_data_connection*) ;
 struct gbaudio_data_connection* devm_kzalloc (int ,int,int ) ;
 struct gb_connection* gb_connection_create_offloaded (struct gb_bundle*,int ,int ) ;
 int greybus_set_drvdata (struct gb_bundle*,struct gbaudio_module_info*) ;
 int le16_to_cpu (int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int gb_audio_add_data_connection(struct gbaudio_module_info *gbmodule,
    struct greybus_descriptor_cport *cport_desc,
    struct gb_bundle *bundle)
{
 struct gb_connection *connection;
 struct gbaudio_data_connection *dai;

 dai = devm_kzalloc(gbmodule->dev, sizeof(*dai), GFP_KERNEL);
 if (!dai)
  return -ENOMEM;

 connection = gb_connection_create_offloaded(bundle,
          le16_to_cpu(cport_desc->id),
          GB_CONNECTION_FLAG_CSD);
 if (IS_ERR(connection)) {
  devm_kfree(gbmodule->dev, dai);
  return PTR_ERR(connection);
 }

 greybus_set_drvdata(bundle, gbmodule);
 dai->id = 0;
 dai->data_cport = connection->intf_cport_id;
 dai->connection = connection;
 list_add(&dai->list, &gbmodule->data_list);

 return 0;
}
