
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_instance {int vchi_handle; int vchi_mutex; } ;


 int mutex_lock (int *) ;
 int vchi_service_use (int ) ;

__attribute__((used)) static void bcm2835_audio_lock(struct bcm2835_audio_instance *instance)
{
 mutex_lock(&instance->vchi_mutex);
 vchi_service_use(instance->vchi_handle);
}
