#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hw_disabled; } ;
struct TYPE_8__ {TYPE_1__ prop; } ;
struct TYPE_7__ {TYPE_4__ bus; int /*<<< orphan*/  dev; } ;
struct sdw_intel {TYPE_3__ cdns; TYPE_2__* res; } ;
struct platform_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct sdw_intel*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_intel*) ; 
 struct sdw_intel* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct sdw_intel *sdw;

	sdw = FUNC2(pdev);

	if (!sdw->cdns.bus.prop.hw_disabled) {
		FUNC1(sdw);
		FUNC0(sdw->res->irq, sdw);
		FUNC4(sdw->cdns.dev);
	}
	FUNC3(&sdw->cdns.bus);

	return 0;
}