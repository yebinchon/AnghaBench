
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_card {int longname; int shortname; int driver; struct bcm2835_chip* private_data; } ;
struct device {int dummy; } ;
struct bcm2835_chip {int vchi_ctx; int audio_mutex; struct device* dev; struct snd_card* card; } ;
struct TYPE_2__ {int name; } ;
struct bcm2835_audio_driver {int (* newpcm ) (struct bcm2835_chip*,int ,int ,int ) ;int (* newctl ) (struct bcm2835_chip*) ;int route; int shortname; int longname; TYPE_1__ driver; } ;


 int ENODEV ;
 int THIS_MODULE ;
 int bcm2835_card_free ;
 int bcm2835_devm_free_vchi_ctx ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ) ;
 int dev_set_drvdata (struct device*,struct bcm2835_chip*) ;
 int devm_add_action (struct device*,int ,struct snd_card*) ;
 int devres_find (struct device*,int ,int *,int *) ;
 int mutex_init (int *) ;
 int snd_card_free (struct snd_card*) ;
 int snd_card_new (struct device*,int,int *,int ,int,struct snd_card**) ;
 int snd_card_register (struct snd_card*) ;
 int strcpy (int ,int ) ;
 int stub1 (struct bcm2835_chip*,int ,int ,int ) ;
 int stub2 (struct bcm2835_chip*) ;

__attribute__((used)) static int snd_add_child_device(struct device *dev,
    struct bcm2835_audio_driver *audio_driver,
    u32 numchans)
{
 struct bcm2835_chip *chip;
 struct snd_card *card;
 int err;

 err = snd_card_new(dev, -1, ((void*)0), THIS_MODULE, sizeof(*chip), &card);
 if (err < 0) {
  dev_err(dev, "Failed to create card");
  return err;
 }

 chip = card->private_data;
 chip->card = card;
 chip->dev = dev;
 mutex_init(&chip->audio_mutex);

 chip->vchi_ctx = devres_find(dev,
         bcm2835_devm_free_vchi_ctx, ((void*)0), ((void*)0));
 if (!chip->vchi_ctx) {
  err = -ENODEV;
  goto error;
 }

 strcpy(card->driver, audio_driver->driver.name);
 strcpy(card->shortname, audio_driver->shortname);
 strcpy(card->longname, audio_driver->longname);

 err = audio_driver->newpcm(chip, audio_driver->shortname,
  audio_driver->route,
  numchans);
 if (err) {
  dev_err(dev, "Failed to create pcm, error %d\n", err);
  goto error;
 }

 err = audio_driver->newctl(chip);
 if (err) {
  dev_err(dev, "Failed to create controls, error %d\n", err);
  goto error;
 }

 err = snd_card_register(card);
 if (err) {
  dev_err(dev, "Failed to register card, error %d\n", err);
  goto error;
 }

 dev_set_drvdata(dev, chip);

 err = devm_add_action(dev, bcm2835_card_free, card);
 if (err < 0) {
  dev_err(dev, "Failed to add devm action, err %d\n", err);
  goto error;
 }

 dev_info(dev, "card created with %d channels\n", numchans);
 return 0;

 error:
 snd_card_free(card);
 return err;
}
