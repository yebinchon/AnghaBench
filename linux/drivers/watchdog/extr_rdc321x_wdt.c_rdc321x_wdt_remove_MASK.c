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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stop; scalar_t__ queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ rdc321x_wdt_device ; 
 int /*<<< orphan*/  rdc321x_wdt_misc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	if (rdc321x_wdt_device.queue) {
		rdc321x_wdt_device.queue = 0;
		FUNC1(&rdc321x_wdt_device.stop);
	}

	FUNC0(&rdc321x_wdt_misc);

	return 0;
}