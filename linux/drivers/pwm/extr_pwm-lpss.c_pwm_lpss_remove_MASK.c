#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/ * pwms; } ;
struct pwm_lpss_chip {TYPE_2__ chip; TYPE_1__* info; } ;
struct TYPE_3__ {int npwm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 

int FUNC3(struct pwm_lpss_chip *lpwm)
{
	int i;

	for (i = 0; i < lpwm->info->npwm; i++) {
		if (FUNC1(&lpwm->chip.pwms[i]))
			FUNC0(lpwm->chip.dev);
	}
	return FUNC2(&lpwm->chip);
}