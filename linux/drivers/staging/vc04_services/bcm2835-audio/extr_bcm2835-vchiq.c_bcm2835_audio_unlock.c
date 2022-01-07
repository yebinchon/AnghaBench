
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_instance {int vchi_mutex; int vchi_handle; } ;


 int mutex_unlock (int *) ;
 int vchi_service_release (int ) ;

__attribute__((used)) static void bcm2835_audio_unlock(struct bcm2835_audio_instance *instance)
{
 vchi_service_release(instance->vchi_handle);
 mutex_unlock(&instance->vchi_mutex);
}
