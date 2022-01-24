#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_card {int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; struct bcm2835_chip* private_data; } ;
struct device {int dummy; } ;
struct bcm2835_chip {int /*<<< orphan*/  vchi_ctx; int /*<<< orphan*/  audio_mutex; struct device* dev; struct snd_card* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bcm2835_audio_driver {int (* newpcm ) (struct bcm2835_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* newctl ) (struct bcm2835_chip*) ;int /*<<< orphan*/  route; int /*<<< orphan*/  shortname; int /*<<< orphan*/  longname; TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  bcm2835_card_free ; 
 int /*<<< orphan*/  bcm2835_devm_free_vchi_ctx ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct bcm2835_chip*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct snd_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_card*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct snd_card**) ; 
 int FUNC8 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct bcm2835_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct bcm2835_chip*) ; 

__attribute__((used)) static int FUNC12(struct device *dev,
				struct bcm2835_audio_driver *audio_driver,
				u32 numchans)
{
	struct bcm2835_chip *chip;
	struct snd_card *card;
	int err;

	err = FUNC7(dev, -1, NULL, THIS_MODULE, sizeof(*chip), &card);
	if (err < 0) {
		FUNC0(dev, "Failed to create card");
		return err;
	}

	chip = card->private_data;
	chip->card = card;
	chip->dev = dev;
	FUNC5(&chip->audio_mutex);

	chip->vchi_ctx = FUNC4(dev,
				     bcm2835_devm_free_vchi_ctx, NULL, NULL);
	if (!chip->vchi_ctx) {
		err = -ENODEV;
		goto error;
	}

	FUNC9(card->driver, audio_driver->driver.name);
	FUNC9(card->shortname, audio_driver->shortname);
	FUNC9(card->longname, audio_driver->longname);

	err = audio_driver->newpcm(chip, audio_driver->shortname,
		audio_driver->route,
		numchans);
	if (err) {
		FUNC0(dev, "Failed to create pcm, error %d\n", err);
		goto error;
	}

	err = audio_driver->newctl(chip);
	if (err) {
		FUNC0(dev, "Failed to create controls, error %d\n", err);
		goto error;
	}

	err = FUNC8(card);
	if (err) {
		FUNC0(dev, "Failed to register card, error %d\n", err);
		goto error;
	}

	FUNC2(dev, chip);

	err = FUNC3(dev, bcm2835_card_free, card);
	if (err < 0) {
		FUNC0(dev, "Failed to add devm action, err %d\n", err);
		goto error;
	}

	FUNC1(dev, "card created with %d channels\n", numchans);
	return 0;

 error:
	FUNC6(card);
	return err;
}