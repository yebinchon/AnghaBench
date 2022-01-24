#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_kcontrol_new {int dummy; } ;
struct bcm2835_chip {int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_kcontrol_new const*,struct bcm2835_chip*) ; 

__attribute__((used)) static int FUNC2(struct bcm2835_chip *chip, size_t size,
		       const struct snd_kcontrol_new *kctls)
{
	int i, err;

	for (i = 0; i < size; i++) {
		err = FUNC0(chip->card, FUNC1(&kctls[i], chip));
		if (err < 0)
			return err;
	}
	return 0;
}