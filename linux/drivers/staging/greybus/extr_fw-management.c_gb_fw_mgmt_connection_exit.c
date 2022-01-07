
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int dummy; } ;
struct fw_mgmt {int disabled; int node; int connection; int mutex; int dev_num; int cdev; } ;


 int MINOR (int ) ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int fw_mgmt_class ;
 int fw_mgmt_minors_map ;
 int gb_connection_disable (int ) ;
 struct fw_mgmt* gb_connection_get_data (struct gb_connection*) ;
 int ida_simple_remove (int *,int ) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_fw_mgmt (struct fw_mgmt*) ;

void gb_fw_mgmt_connection_exit(struct gb_connection *connection)
{
 struct fw_mgmt *fw_mgmt;

 if (!connection)
  return;

 fw_mgmt = gb_connection_get_data(connection);

 device_destroy(fw_mgmt_class, fw_mgmt->dev_num);
 cdev_del(&fw_mgmt->cdev);
 ida_simple_remove(&fw_mgmt_minors_map, MINOR(fw_mgmt->dev_num));





 mutex_lock(&fw_mgmt->mutex);
 fw_mgmt->disabled = 1;
 mutex_unlock(&fw_mgmt->mutex);


 gb_connection_disable(fw_mgmt->connection);


 mutex_lock(&list_mutex);
 list_del(&fw_mgmt->node);
 mutex_unlock(&list_mutex);






 put_fw_mgmt(fw_mgmt);
}
