
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_chip {TYPE_1__* card; } ;
struct TYPE_2__ {int mixername; } ;


 int ARRAY_SIZE (int ) ;
 int create_ctls (struct bcm2835_chip*,int ,int ) ;
 int snd_bcm2835_ctl ;
 int snd_bcm2835_spdif ;
 int strcpy (int ,char*) ;

int snd_bcm2835_new_ctl(struct bcm2835_chip *chip)
{
 int err;

 strcpy(chip->card->mixername, "Broadcom Mixer");
 err = create_ctls(chip, ARRAY_SIZE(snd_bcm2835_ctl), snd_bcm2835_ctl);
 if (err < 0)
  return err;
 return create_ctls(chip, ARRAY_SIZE(snd_bcm2835_spdif),
      snd_bcm2835_spdif);
}
