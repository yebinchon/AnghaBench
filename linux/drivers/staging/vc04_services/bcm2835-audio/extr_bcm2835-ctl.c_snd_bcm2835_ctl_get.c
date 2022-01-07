
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct bcm2835_chip {int audio_mutex; int dest; int mute; int volume; } ;


 scalar_t__ PCM_PLAYBACK_DEVICE ;
 scalar_t__ PCM_PLAYBACK_MUTE ;
 scalar_t__ PCM_PLAYBACK_VOLUME ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bcm2835_chip* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_bcm2835_ctl_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct bcm2835_chip *chip = snd_kcontrol_chip(kcontrol);

 mutex_lock(&chip->audio_mutex);

 if (kcontrol->private_value == PCM_PLAYBACK_VOLUME)
  ucontrol->value.integer.value[0] = chip->volume;
 else if (kcontrol->private_value == PCM_PLAYBACK_MUTE)
  ucontrol->value.integer.value[0] = chip->mute;
 else if (kcontrol->private_value == PCM_PLAYBACK_DEVICE)
  ucontrol->value.integer.value[0] = chip->dest;

 mutex_unlock(&chip->audio_mutex);
 return 0;
}
