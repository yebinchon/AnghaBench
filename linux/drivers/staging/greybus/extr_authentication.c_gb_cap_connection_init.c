
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {TYPE_1__* bundle; } ;
struct gb_cap {int node; int cdev; int class_device; int dev_num; int * parent; int kref; int mutex; struct gb_connection* connection; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int) ;
 int NUM_MINORS ;
 int PTR_ERR (int ) ;
 int cap_class ;
 int cap_dev_num ;
 int cap_fops ;
 int cap_list ;
 int cap_minors_map ;
 int cdev_add (int *,int ,int) ;
 int cdev_del (int *) ;
 int cdev_init (int *,int *) ;
 int device_create (int ,int *,int ,int *,char*,int) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_connection_set_data (struct gb_connection*,struct gb_cap*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int kref_init (int *) ;
 struct gb_cap* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_cap (struct gb_cap*) ;

int gb_cap_connection_init(struct gb_connection *connection)
{
 struct gb_cap *cap;
 int ret, minor;

 if (!connection)
  return 0;

 cap = kzalloc(sizeof(*cap), GFP_KERNEL);
 if (!cap)
  return -ENOMEM;

 cap->parent = &connection->bundle->dev;
 cap->connection = connection;
 mutex_init(&cap->mutex);
 gb_connection_set_data(connection, cap);
 kref_init(&cap->kref);

 mutex_lock(&list_mutex);
 list_add(&cap->node, &cap_list);
 mutex_unlock(&list_mutex);

 ret = gb_connection_enable(connection);
 if (ret)
  goto err_list_del;

 minor = ida_simple_get(&cap_minors_map, 0, NUM_MINORS, GFP_KERNEL);
 if (minor < 0) {
  ret = minor;
  goto err_connection_disable;
 }


 cap->dev_num = MKDEV(MAJOR(cap_dev_num), minor);
 cdev_init(&cap->cdev, &cap_fops);

 ret = cdev_add(&cap->cdev, cap->dev_num, 1);
 if (ret)
  goto err_remove_ida;


 cap->class_device = device_create(cap_class, cap->parent, cap->dev_num,
       ((void*)0), "gb-authenticate-%d", minor);
 if (IS_ERR(cap->class_device)) {
  ret = PTR_ERR(cap->class_device);
  goto err_del_cdev;
 }

 return 0;

err_del_cdev:
 cdev_del(&cap->cdev);
err_remove_ida:
 ida_simple_remove(&cap_minors_map, minor);
err_connection_disable:
 gb_connection_disable(connection);
err_list_del:
 mutex_lock(&list_mutex);
 list_del(&cap->node);
 mutex_unlock(&list_mutex);

 put_cap(cap);

 return ret;
}
