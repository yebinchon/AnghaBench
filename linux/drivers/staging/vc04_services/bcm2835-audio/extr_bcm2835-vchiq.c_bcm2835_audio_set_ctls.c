
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume; int dest; } ;
struct vc_audio_msg {TYPE_1__ control; int type; } ;
struct bcm2835_chip {int volume; int mute; int dest; } ;
struct bcm2835_alsa_stream {int instance; struct bcm2835_chip* chip; } ;


 int CHIP_MIN_VOLUME ;
 int VC_AUDIO_MSG_TYPE_CONTROL ;
 int alsa2chip (int ) ;
 int bcm2835_audio_send_msg (int ,struct vc_audio_msg*,int) ;

int bcm2835_audio_set_ctls(struct bcm2835_alsa_stream *alsa_stream)
{
 struct bcm2835_chip *chip = alsa_stream->chip;
 struct vc_audio_msg m = {};

 m.type = VC_AUDIO_MSG_TYPE_CONTROL;
 m.control.dest = chip->dest;
 if (!chip->mute)
  m.control.volume = CHIP_MIN_VOLUME;
 else
  m.control.volume = alsa2chip(chip->volume);

 return bcm2835_audio_send_msg(alsa_stream->instance, &m, 1);
}
