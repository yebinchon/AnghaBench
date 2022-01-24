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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const* const,int /*<<< orphan*/ ,char const* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*,char const* const,struct device*,char const* const) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char const* const) ; 

int FUNC4(struct device *dev,
					 const char *const *id,
					 struct device *alias_dev,
					 const char *const *alias_id,
					 int num_id)
{
	int i;
	int ret;

	for (i = 0; i < num_id; ++i) {
		ret = FUNC2(dev, id[i], alias_dev,
						      alias_id[i]);
		if (ret < 0)
			goto err;
	}

	return 0;

err:
	FUNC0(dev,
		"Failed to create supply alias %s,%s -> %s,%s\n",
		id[i], FUNC1(dev), alias_id[i], FUNC1(alias_dev));

	while (--i >= 0)
		FUNC3(dev, id[i]);

	return ret;
}