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
struct pwm_omap_dmtimer_chip {int /*<<< orphan*/  mutex; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pwm_omap_dmtimer_chip*) ; 
 struct pwm_omap_dmtimer_chip* FUNC3 (struct pwm_chip*) ; 

__attribute__((used)) static int FUNC4(struct pwm_chip *chip,
				   struct pwm_device *pwm)
{
	struct pwm_omap_dmtimer_chip *omap = FUNC3(chip);

	FUNC0(&omap->mutex);
	FUNC2(omap);
	FUNC1(&omap->mutex);

	return 0;
}