
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_chip {scalar_t__* alsa_stream; } ;


 int MAX_SUBSTREAMS ;
 int bcm2835_audio_set_ctls (scalar_t__) ;

__attribute__((used)) static int bcm2835_audio_set_chip_ctls(struct bcm2835_chip *chip)
{
 int i, err = 0;


 for (i = 0; i < MAX_SUBSTREAMS; i++) {
  if (chip->alsa_stream[i]) {
   err = bcm2835_audio_set_ctls(chip->alsa_stream[i]);
   if (err < 0)
    break;
  }
 }
 return err;
}
