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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ sch_wdtba; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IO ; 
 TYPE_1__ ie6xx_wdt_data ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ie6xx_wdt_dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct resource *res;

	res = FUNC2(pdev, IORESOURCE_IO, 0);
	FUNC1(NULL);
	FUNC5(&ie6xx_wdt_dev);
	FUNC0();
	FUNC3(res->start, FUNC4(res));
	ie6xx_wdt_data.sch_wdtba = 0;

	return 0;
}