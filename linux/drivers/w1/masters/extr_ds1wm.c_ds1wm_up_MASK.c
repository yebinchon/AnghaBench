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
struct ds1wm_driver_data {int /*<<< orphan*/  clock_rate; } ;
struct ds1wm_data {TYPE_2__* pdev; TYPE_1__* cell; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DS1WM_CLKDIV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct ds1wm_driver_data* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ds1wm_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct ds1wm_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(struct ds1wm_data *ds1wm_data)
{
	int divisor;
	struct device *dev = &ds1wm_data->pdev->dev;
	struct ds1wm_driver_data *plat = FUNC2(dev);

	if (ds1wm_data->cell->enable)
		ds1wm_data->cell->enable(ds1wm_data->pdev);

	divisor = FUNC3(plat->clock_rate);
	FUNC0(dev, "found divisor 0x%x for clock %d\n",
		divisor, plat->clock_rate);
	if (divisor == 0) {
		FUNC1(dev, "no suitable divisor for %dHz clock\n",
			plat->clock_rate);
		return;
	}
	FUNC5(ds1wm_data, DS1WM_CLKDIV, divisor);

	/* Let the w1 clock stabilize. */
	FUNC6(1);

	FUNC4(ds1wm_data);
}