
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcm2835_chip {TYPE_1__* card; } ;
struct TYPE_2__ {int mixername; } ;


 int ARRAY_SIZE (int ) ;
 int create_ctls (struct bcm2835_chip*,int ,int ) ;
 int snd_bcm2835_headphones_ctl ;
 int strcpy (int ,char*) ;

int snd_bcm2835_new_headphones_ctl(struct bcm2835_chip *chip)
{
 strcpy(chip->card->mixername, "Broadcom Mixer");
 return create_ctls(chip, ARRAY_SIZE(snd_bcm2835_headphones_ctl),
      snd_bcm2835_headphones_ctl);
}
