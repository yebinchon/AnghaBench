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
struct pwm_omap_dmtimer_chip {int /*<<< orphan*/  chip; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dm_timer; TYPE_2__* pdata; TYPE_1__* dm_timer_pdev; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* stop ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pwm_omap_dmtimer_chip* FUNC1 (struct platform_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct pwm_omap_dmtimer_chip *omap = FUNC1(pdev);

	if (FUNC2(&omap->dm_timer_pdev->dev))
		omap->pdata->stop(omap->dm_timer);

	omap->pdata->free(omap->dm_timer);

	FUNC0(&omap->mutex);

	return FUNC3(&omap->chip);
}