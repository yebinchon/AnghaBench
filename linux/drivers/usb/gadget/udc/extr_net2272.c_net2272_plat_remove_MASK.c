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
struct platform_device {TYPE_1__* resource; } ;
struct net2272 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net2272*) ; 
 int /*<<< orphan*/  FUNC1 (struct net2272*) ; 
 struct net2272* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct platform_device *pdev)
{
	struct net2272 *dev = FUNC2(pdev);

	FUNC1(dev);

	FUNC3(pdev->resource[0].start,
		FUNC4(&pdev->resource[0]));

	FUNC0(dev);

	return 0;
}