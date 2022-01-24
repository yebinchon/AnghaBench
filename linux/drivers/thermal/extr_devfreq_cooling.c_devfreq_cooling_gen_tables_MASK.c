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
typedef  unsigned long u32 ;
struct device {int dummy; } ;
struct devfreq_cooling_device {unsigned long* power_table; unsigned long* freq_table; int freq_table_size; TYPE_2__* power_ops; struct devfreq* devfreq; } ;
struct TYPE_3__ {struct device* parent; } ;
struct devfreq {TYPE_1__ dev; } ;
struct dev_pm_opp {int dummy; } ;
struct TYPE_4__ {scalar_t__ get_real_power; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 struct dev_pm_opp* FUNC3 (struct device*,unsigned long*) ; 
 int FUNC4 (struct device*) ; 
 int FUNC5 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC6 (struct dev_pm_opp*) ; 
 unsigned long FUNC7 (struct devfreq_cooling_device*,unsigned long,unsigned long) ; 
 unsigned long FUNC8 (struct devfreq_cooling_device*,unsigned long,unsigned long) ; 
 unsigned long* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long*) ; 

__attribute__((used)) static int FUNC11(struct devfreq_cooling_device *dfc)
{
	struct devfreq *df = dfc->devfreq;
	struct device *dev = df->dev.parent;
	int ret, num_opps;
	unsigned long freq;
	u32 *power_table = NULL;
	u32 *freq_table;
	int i;

	num_opps = FUNC4(dev);

	if (dfc->power_ops) {
		power_table = FUNC9(num_opps, sizeof(*power_table),
				      GFP_KERNEL);
		if (!power_table)
			return -ENOMEM;
	}

	freq_table = FUNC9(num_opps, sizeof(*freq_table),
			     GFP_KERNEL);
	if (!freq_table) {
		ret = -ENOMEM;
		goto free_power_table;
	}

	for (i = 0, freq = ULONG_MAX; i < num_opps; i++, freq--) {
		unsigned long power, voltage;
		struct dev_pm_opp *opp;

		opp = FUNC3(dev, &freq);
		if (FUNC0(opp)) {
			ret = FUNC1(opp);
			goto free_tables;
		}

		voltage = FUNC5(opp) / 1000; /* mV */
		FUNC6(opp);

		if (dfc->power_ops) {
			if (dfc->power_ops->get_real_power)
				power = FUNC8(dfc, freq, voltage);
			else
				power = FUNC7(dfc, freq, voltage);

			FUNC2(dev, "Power table: %lu MHz @ %lu mV: %lu = %lu mW\n",
				freq / 1000000, voltage, power, power);

			power_table[i] = power;
		}

		freq_table[i] = freq;
	}

	if (dfc->power_ops)
		dfc->power_table = power_table;

	dfc->freq_table = freq_table;
	dfc->freq_table_size = num_opps;

	return 0;

free_tables:
	FUNC10(freq_table);
free_power_table:
	FUNC10(power_table);

	return ret;
}