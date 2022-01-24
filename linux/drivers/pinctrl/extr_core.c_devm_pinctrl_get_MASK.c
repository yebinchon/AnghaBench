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
struct pinctrl {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct pinctrl* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl*) ; 
 int /*<<< orphan*/  devm_pinctrl_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct pinctrl**) ; 
 struct pinctrl** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pinctrl**) ; 
 struct pinctrl* FUNC5 (struct device*) ; 

struct pinctrl *FUNC6(struct device *dev)
{
	struct pinctrl **ptr, *p;

	ptr = FUNC3(devm_pinctrl_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	p = FUNC5(dev);
	if (!FUNC1(p)) {
		*ptr = p;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
	}

	return p;
}