
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uac_rtd_params {int max_psize; int rbuf; struct snd_pcm_substream* ss; int lock; scalar_t__ hw_ptr; } ;
struct uac_params {int req_number; } ;
struct snd_uac_chip {struct uac_rtd_params c_prm; struct uac_rtd_params p_prm; struct g_audio* audio_dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct g_audio {struct uac_params params; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;




 int memset (int ,int ,int) ;
 struct snd_uac_chip* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int uac_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_uac_chip *uac = snd_pcm_substream_chip(substream);
 struct uac_rtd_params *prm;
 struct g_audio *audio_dev;
 struct uac_params *params;
 unsigned long flags;
 int err = 0;

 audio_dev = uac->audio_dev;
 params = &audio_dev->params;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  prm = &uac->p_prm;
 else
  prm = &uac->c_prm;

 spin_lock_irqsave(&prm->lock, flags);


 prm->hw_ptr = 0;

 switch (cmd) {
 case 130:
 case 131:
  prm->ss = substream;
  break;
 case 129:
 case 128:
  prm->ss = ((void*)0);
  break;
 default:
  err = -EINVAL;
 }

 spin_unlock_irqrestore(&prm->lock, flags);


 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK && !prm->ss)
  memset(prm->rbuf, 0, prm->max_psize * params->req_number);

 return err;
}
