#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct devfreq_cooling_device {int freq_table_size; unsigned int* freq_table; TYPE_2__* devfreq; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ERANGE ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int FUNC2 (struct device*,unsigned int) ; 
 int FUNC3 (struct device*,unsigned int) ; 
 struct dev_pm_opp* FUNC4 (struct device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_opp*) ; 

__attribute__((used)) static int FUNC6(struct devfreq_cooling_device *dfc,
				 unsigned long cdev_state)
{
	int i;
	struct device *dev = dfc->devfreq->dev.parent;

	for (i = 0; i < dfc->freq_table_size; i++) {
		struct dev_pm_opp *opp;
		int ret = 0;
		unsigned int freq = dfc->freq_table[i];
		bool want_enable = i >= cdev_state ? true : false;

		opp = FUNC4(dev, freq, !want_enable);

		if (FUNC1(opp) == -ERANGE)
			continue;
		else if (FUNC0(opp))
			return FUNC1(opp);

		FUNC5(opp);

		if (want_enable)
			ret = FUNC3(dev, freq);
		else
			ret = FUNC2(dev, freq);

		if (ret)
			return ret;
	}

	return 0;
}