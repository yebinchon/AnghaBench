
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int dummy; } ;
struct gb_cap {int disabled; int node; int connection; int mutex; int dev_num; int cdev; } ;


 int MINOR (int ) ;
 int cap_class ;
 int cap_minors_map ;
 int cdev_del (int *) ;
 int device_destroy (int ,int ) ;
 int gb_connection_disable (int ) ;
 struct gb_cap* gb_connection_get_data (struct gb_connection*) ;
 int ida_simple_remove (int *,int ) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_cap (struct gb_cap*) ;

void gb_cap_connection_exit(struct gb_connection *connection)
{
 struct gb_cap *cap;

 if (!connection)
  return;

 cap = gb_connection_get_data(connection);

 device_destroy(cap_class, cap->dev_num);
 cdev_del(&cap->cdev);
 ida_simple_remove(&cap_minors_map, MINOR(cap->dev_num));





 mutex_lock(&cap->mutex);
 cap->disabled = 1;
 mutex_unlock(&cap->mutex);


 gb_connection_disable(cap->connection);


 mutex_lock(&list_mutex);
 list_del(&cap->node);
 mutex_unlock(&list_mutex);






 put_cap(cap);
}
