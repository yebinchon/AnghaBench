
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {TYPE_1__* bundle; } ;
struct fw_mgmt {int node; int cdev; int class_device; int dev_num; int * parent; int kref; int mutex; int id_map; int completion; struct gb_connection* connection; int timeout_jiffies; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int FW_MGMT_TIMEOUT_MS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int NUM_MINORS ;
 int PTR_ERR (int ) ;
 int cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int fw_mgmt_class ;
 int fw_mgmt_dev_num ;
 int fw_mgmt_fops ;
 int fw_mgmt_list ;
 int fw_mgmt_minors_map ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct fw_mgmt*) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 struct fw_mgmt* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_mutex ;
 int msecs_to_jiffies (int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_fw_mgmt (struct fw_mgmt*) ;

int gb_fw_mgmt_connection_init(struct gb_connection *connection)
{
 struct fw_mgmt *fw_mgmt;
 int ret, minor;

 if (!connection)
  return 0;

 fw_mgmt = kzalloc(sizeof(*fw_mgmt), GFP_KERNEL);
 if (!fw_mgmt)
  return -ENOMEM;

 fw_mgmt->parent = &connection->bundle->dev;
 fw_mgmt->timeout_jiffies = msecs_to_jiffies(FW_MGMT_TIMEOUT_MS);
 fw_mgmt->connection = connection;

 gb_connection_set_data(connection, fw_mgmt);
 init_completion(&fw_mgmt->completion);
 ida_init(&fw_mgmt->id_map);
 mutex_init(&fw_mgmt->mutex);
 kref_init(&fw_mgmt->kref);

 mutex_lock(&list_mutex);
 list_add(&fw_mgmt->node, &fw_mgmt_list);
 mutex_unlock(&list_mutex);

 ret = gb_connection_enable(connection);
 if (ret)
  goto err_list_del;

 minor = ida_simple_get(&fw_mgmt_minors_map, 0, NUM_MINORS, GFP_KERNEL);
 if (minor < 0) {
  ret = minor;
  goto err_connection_disable;
 }


 fw_mgmt->dev_num = MKDEV(MAJOR(fw_mgmt_dev_num), minor);
 cdev_init(&fw_mgmt->cdev, &fw_mgmt_fops);

 ret = cdev_add(&fw_mgmt->cdev, fw_mgmt->dev_num, 1);
 if (ret)
  goto err_remove_ida;


 fw_mgmt->class_device = device_create(fw_mgmt_class, fw_mgmt->parent,
           fw_mgmt->dev_num, ((void*)0),
           "gb-fw-mgmt-%d", minor);
 if (IS_ERR(fw_mgmt->class_device)) {
  ret = PTR_ERR(fw_mgmt->class_device);
  goto err_del_cdev;
 }

 return 0;

err_del_cdev:
 cdev_del(&fw_mgmt->cdev);
err_remove_ida:
 ida_simple_remove(&fw_mgmt_minors_map, minor);
err_connection_disable:
 gb_connection_disable(connection);
err_list_del:
 mutex_lock(&list_mutex);
 list_del(&fw_mgmt->node);
 mutex_unlock(&list_mutex);

 put_fw_mgmt(fw_mgmt);

 return ret;
}
