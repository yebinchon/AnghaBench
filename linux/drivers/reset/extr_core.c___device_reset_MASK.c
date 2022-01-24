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
struct reset_control {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 struct reset_control* FUNC2 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int FUNC4 (struct reset_control*) ; 

int FUNC5(struct device *dev, bool optional)
{
	struct reset_control *rstc;
	int ret;

	rstc = FUNC2(dev, NULL, 0, 0, optional, true);
	if (FUNC0(rstc))
		return FUNC1(rstc);

	ret = FUNC4(rstc);

	FUNC3(rstc);

	return ret;
}