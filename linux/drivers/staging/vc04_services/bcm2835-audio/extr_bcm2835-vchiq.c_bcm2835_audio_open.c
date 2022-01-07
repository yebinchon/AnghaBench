
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_vchi_ctx {int vchi_instance; } ;
struct bcm2835_audio_instance {int peer_version; int max_packet; int vchi_handle; struct bcm2835_alsa_stream* alsa_stream; int dev; int vchi_mutex; } ;
struct bcm2835_alsa_stream {struct bcm2835_audio_instance* instance; TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; struct bcm2835_vchi_ctx* vchi_ctx; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VC_AUDIO_MSG_TYPE_OPEN ;
 int bcm2835_audio_lock (struct bcm2835_audio_instance*) ;
 int bcm2835_audio_send_simple (struct bcm2835_audio_instance*,int ,int) ;
 int bcm2835_audio_unlock (struct bcm2835_audio_instance*) ;
 scalar_t__ force_bulk ;
 int kfree (struct bcm2835_audio_instance*) ;
 struct bcm2835_audio_instance* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int vc_vchi_audio_deinit (struct bcm2835_audio_instance*) ;
 int vc_vchi_audio_init (int ,struct bcm2835_audio_instance*) ;
 int vchi_get_peer_version (int ,int*) ;

int bcm2835_audio_open(struct bcm2835_alsa_stream *alsa_stream)
{
 struct bcm2835_vchi_ctx *vchi_ctx = alsa_stream->chip->vchi_ctx;
 struct bcm2835_audio_instance *instance;
 int err;


 instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 if (!instance)
  return -ENOMEM;
 mutex_init(&instance->vchi_mutex);
 instance->dev = alsa_stream->chip->dev;
 instance->alsa_stream = alsa_stream;
 alsa_stream->instance = instance;

 err = vc_vchi_audio_init(vchi_ctx->vchi_instance,
     instance);
 if (err < 0)
  goto free_instance;

 err = bcm2835_audio_send_simple(instance, VC_AUDIO_MSG_TYPE_OPEN,
     0);
 if (err < 0)
  goto deinit;

 bcm2835_audio_lock(instance);
 vchi_get_peer_version(instance->vchi_handle, &instance->peer_version);
 bcm2835_audio_unlock(instance);
 if (instance->peer_version < 2 || force_bulk)
  instance->max_packet = 0;
 else
  instance->max_packet = 4000;

 return 0;

 deinit:
 vc_vchi_audio_deinit(instance);
 free_instance:
 alsa_stream->instance = ((void*)0);
 kfree(instance);
 return err;
}
