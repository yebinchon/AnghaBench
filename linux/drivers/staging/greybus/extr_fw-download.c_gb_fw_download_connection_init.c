
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {TYPE_1__* bundle; } ;
struct fw_download {int id_map; int mutex; struct gb_connection* connection; int fw_requests; int * parent; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct fw_download*) ;
 int ida_destroy (int *) ;
 int ida_init (int *) ;
 int kfree (struct fw_download*) ;
 struct fw_download* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int gb_fw_download_connection_init(struct gb_connection *connection)
{
 struct fw_download *fw_download;
 int ret;

 if (!connection)
  return 0;

 fw_download = kzalloc(sizeof(*fw_download), GFP_KERNEL);
 if (!fw_download)
  return -ENOMEM;

 fw_download->parent = &connection->bundle->dev;
 INIT_LIST_HEAD(&fw_download->fw_requests);
 ida_init(&fw_download->id_map);
 gb_connection_set_data(connection, fw_download);
 fw_download->connection = connection;
 mutex_init(&fw_download->mutex);

 ret = gb_connection_enable(connection);
 if (ret)
  goto err_destroy_id_map;

 return 0;

err_destroy_id_map:
 ida_destroy(&fw_download->id_map);
 kfree(fw_download);

 return ret;
}
