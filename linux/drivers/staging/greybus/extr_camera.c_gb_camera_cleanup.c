
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_camera {int mutex; int * connection; int * data_connection; } ;


 int gb_camera_debugfs_cleanup (struct gb_camera*) ;
 int gb_connection_destroy (int *) ;
 int gb_connection_disable (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gb_camera_cleanup(struct gb_camera *gcam)
{
 gb_camera_debugfs_cleanup(gcam);

 mutex_lock(&gcam->mutex);
 if (gcam->data_connection) {
  gb_connection_disable(gcam->data_connection);
  gb_connection_destroy(gcam->data_connection);
  gcam->data_connection = ((void*)0);
 }

 if (gcam->connection) {
  gb_connection_disable(gcam->connection);
  gb_connection_destroy(gcam->connection);
  gcam->connection = ((void*)0);
 }
 mutex_unlock(&gcam->mutex);
}
