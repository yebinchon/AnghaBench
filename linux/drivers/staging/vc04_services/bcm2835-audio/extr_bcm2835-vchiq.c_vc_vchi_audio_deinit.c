
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_instance {int vchi_mutex; int dev; int vchi_handle; } ;


 int dev_err (int ,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vchi_service_close (int ) ;
 int vchi_service_use (int ) ;

__attribute__((used)) static void vc_vchi_audio_deinit(struct bcm2835_audio_instance *instance)
{
 int status;

 mutex_lock(&instance->vchi_mutex);
 vchi_service_use(instance->vchi_handle);


 status = vchi_service_close(instance->vchi_handle);
 if (status) {
  dev_err(instance->dev,
   "failed to close VCHI service connection (status=%d)\n",
   status);
 }

 mutex_unlock(&instance->vchi_mutex);
}
