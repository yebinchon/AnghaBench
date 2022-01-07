
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uac_rtd_params {int hw_ptr; } ;
struct snd_uac_chip {struct uac_rtd_params c_prm; struct uac_rtd_params p_prm; } ;
struct snd_pcm_substream {scalar_t__ stream; int runtime; } ;
typedef int snd_pcm_uframes_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (int ,int ) ;
 struct snd_uac_chip* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t uac_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_uac_chip *uac = snd_pcm_substream_chip(substream);
 struct uac_rtd_params *prm;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  prm = &uac->p_prm;
 else
  prm = &uac->c_prm;

 return bytes_to_frames(substream->runtime, prm->hw_ptr);
}
