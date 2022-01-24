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
struct pinctrl {int /*<<< orphan*/  users; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct pinctrl* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct pinctrl* FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct pinctrl* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct pinctrl *FUNC6(struct device *dev)
{
	struct pinctrl *p;

	if (FUNC1(!dev))
		return FUNC0(-EINVAL);

	/*
	 * See if somebody else (such as the device core) has already
	 * obtained a handle to the pinctrl for this device. In that case,
	 * return another pointer to it.
	 */
	p = FUNC4(dev);
	if (p) {
		FUNC3(dev, "obtain a copy of previously claimed pinctrl\n");
		FUNC5(&p->users);
		return p;
	}

	return FUNC2(dev, NULL);
}