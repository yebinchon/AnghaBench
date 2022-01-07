
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_creation {struct bcm2835_audio_instance* callback_param; int callback; int service_id; int version; } ;
struct bcm2835_audio_instance {int vchi_handle; int dev; } ;
typedef int VCHI_INSTANCE_T ;


 int EPERM ;
 int VCHI_VERSION_EX (int ,int ) ;
 int VC_AUDIOSERV_MIN_VER ;
 int VC_AUDIOSERV_VER ;
 int VC_AUDIO_SERVER_NAME ;
 int audio_vchi_callback ;
 int dev_err (int ,char*,int) ;
 int vchi_service_open (int ,struct service_creation*,int *) ;
 int vchi_service_release (int ) ;

__attribute__((used)) static int
vc_vchi_audio_init(VCHI_INSTANCE_T vchi_instance,
     struct bcm2835_audio_instance *instance)
{
 struct service_creation params = {
  .version = VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
  .service_id = VC_AUDIO_SERVER_NAME,
  .callback = audio_vchi_callback,
  .callback_param = instance,
 };
 int status;


 status = vchi_service_open(vchi_instance, &params,
       &instance->vchi_handle);

 if (status) {
  dev_err(instance->dev,
   "failed to open VCHI service connection (status=%d)\n",
   status);
  return -EPERM;
 }


 vchi_service_release(instance->vchi_handle);

 return 0;
}
