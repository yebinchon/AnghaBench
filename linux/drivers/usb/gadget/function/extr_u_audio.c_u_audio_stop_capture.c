
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uac_chip {int c_prm; } ;
struct g_audio {int out_ep; struct snd_uac_chip* uac; } ;


 int free_ep (int *,int ) ;

void u_audio_stop_capture(struct g_audio *audio_dev)
{
 struct snd_uac_chip *uac = audio_dev->uac;

 free_ep(&uac->c_prm, audio_dev->out_ep);
}
