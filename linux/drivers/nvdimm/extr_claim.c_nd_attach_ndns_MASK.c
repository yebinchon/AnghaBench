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
struct nd_namespace_common {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,struct nd_namespace_common*,struct nd_namespace_common**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct device *dev, struct nd_namespace_common *attach,
		struct nd_namespace_common **_ndns)
{
	bool claimed;

	FUNC1(&attach->dev);
	claimed = FUNC0(dev, attach, _ndns);
	FUNC2(&attach->dev);
	return claimed;
}