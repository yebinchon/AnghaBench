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
struct pl022 {int /*<<< orphan*/  pump_transfers; int /*<<< orphan*/  clk; TYPE_1__* master_info; } ;
struct amba_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ enable_dma; } ;

/* Variables and functions */
 struct pl022* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pl022*) ; 
 int /*<<< orphan*/  FUNC4 (struct pl022*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct amba_device *adev)
{
	struct pl022 *pl022 = FUNC0(adev);

	if (!pl022)
		return 0;

	/*
	 * undo pm_runtime_put() in probe.  I assume that we're not
	 * accessing the primecell here.
	 */
	FUNC5(&adev->dev);

	FUNC3(pl022);
	if (pl022->master_info->enable_dma)
		FUNC4(pl022);

	FUNC2(pl022->clk);
	FUNC1(adev);
	FUNC6(&pl022->pump_transfers);
	return 0;
}