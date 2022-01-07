
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_audio_msg {int dummy; } ;
struct bcm2835_audio_instance {int dummy; } ;


 int bcm2835_audio_lock (struct bcm2835_audio_instance*) ;
 int bcm2835_audio_send_msg_locked (struct bcm2835_audio_instance*,struct vc_audio_msg*,int) ;
 int bcm2835_audio_unlock (struct bcm2835_audio_instance*) ;

__attribute__((used)) static int bcm2835_audio_send_msg(struct bcm2835_audio_instance *instance,
      struct vc_audio_msg *m, bool wait)
{
 int err;

 bcm2835_audio_lock(instance);
 err = bcm2835_audio_send_msg_locked(instance, m, wait);
 bcm2835_audio_unlock(instance);
 return err;
}
