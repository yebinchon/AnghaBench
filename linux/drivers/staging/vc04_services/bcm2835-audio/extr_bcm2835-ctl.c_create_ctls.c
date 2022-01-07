
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int dummy; } ;
struct bcm2835_chip {int card; } ;


 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new const*,struct bcm2835_chip*) ;

__attribute__((used)) static int create_ctls(struct bcm2835_chip *chip, size_t size,
         const struct snd_kcontrol_new *kctls)
{
 int i, err;

 for (i = 0; i < size; i++) {
  err = snd_ctl_add(chip->card, snd_ctl_new1(&kctls[i], chip));
  if (err < 0)
   return err;
 }
 return 0;
}
