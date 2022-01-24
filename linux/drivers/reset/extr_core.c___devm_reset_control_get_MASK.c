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
 int /*<<< orphan*/  ENOMEM ; 
 struct reset_control* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct reset_control*) ; 
 struct reset_control* FUNC2 (struct device*,char const*,int,int,int,int) ; 
 int /*<<< orphan*/  devm_reset_control_release ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct reset_control**) ; 
 struct reset_control** FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct reset_control**) ; 

struct reset_control *FUNC6(struct device *dev,
				     const char *id, int index, bool shared,
				     bool optional, bool acquired)
{
	struct reset_control **ptr, *rstc;

	ptr = FUNC4(devm_reset_control_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return FUNC0(-ENOMEM);

	rstc = FUNC2(dev, id, index, shared, optional, acquired);
	if (!FUNC1(rstc)) {
		*ptr = rstc;
		FUNC3(dev, ptr);
	} else {
		FUNC5(ptr);
	}

	return rstc;
}