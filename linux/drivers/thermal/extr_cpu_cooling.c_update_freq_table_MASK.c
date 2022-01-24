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
typedef  int u64 ;
typedef  int u32 ;
struct freq_table {int frequency; int power; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct cpufreq_cooling_device {int max_level; TYPE_1__* policy; struct freq_table* freq_table; } ;
struct TYPE_2__ {int cpu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 
 struct dev_pm_opp* FUNC2 (struct device*,unsigned long*) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 struct device* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct cpufreq_cooling_device *cpufreq_cdev,
			     u32 capacitance)
{
	struct freq_table *freq_table = cpufreq_cdev->freq_table;
	struct dev_pm_opp *opp;
	struct device *dev = NULL;
	int num_opps = 0, cpu = cpufreq_cdev->policy->cpu, i;

	dev = FUNC8(cpu);
	if (FUNC10(!dev)) {
		FUNC9("No cpu device for cpu %d\n", cpu);
		return -ENODEV;
	}

	num_opps = FUNC3(dev);
	if (num_opps < 0)
		return num_opps;

	/*
	 * The cpufreq table is also built from the OPP table and so the count
	 * should match.
	 */
	if (num_opps != cpufreq_cdev->max_level + 1) {
		FUNC6(dev, "Number of OPPs not matching with max_levels\n");
		return -EINVAL;
	}

	for (i = 0; i <= cpufreq_cdev->max_level; i++) {
		unsigned long freq = freq_table[i].frequency * 1000;
		u32 freq_mhz = freq_table[i].frequency / 1000;
		u64 power;
		u32 voltage_mv;

		/*
		 * Find ceil frequency as 'freq' may be slightly lower than OPP
		 * freq due to truncation while converting to kHz.
		 */
		opp = FUNC2(dev, &freq);
		if (FUNC0(opp)) {
			FUNC1(dev, "failed to get opp for %lu frequency\n",
				freq);
			return -EINVAL;
		}

		voltage_mv = FUNC4(opp) / 1000;
		FUNC5(opp);

		/*
		 * Do the multiplication with MHz and millivolt so as
		 * to not overflow.
		 */
		power = (u64)capacitance * freq_mhz * voltage_mv * voltage_mv;
		FUNC7(power, 1000000000);

		/* power is stored in mW */
		freq_table[i].power = power;
	}

	return 0;
}