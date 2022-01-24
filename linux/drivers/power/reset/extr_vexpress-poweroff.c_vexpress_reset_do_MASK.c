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
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*,int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct device *dev, const char *what)
{
	int err = -ENOENT;
	struct regmap *reg = FUNC1(dev);

	if (reg) {
		err = FUNC3(reg, 0, 0);
		if (!err)
			FUNC2(1000);
	}

	FUNC0(dev, "Unable to %s (%d)\n", what, err);
}