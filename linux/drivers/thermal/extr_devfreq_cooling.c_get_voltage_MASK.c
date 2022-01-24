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
struct device {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct devfreq {TYPE_1__ dev; } ;
struct dev_pm_opp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC1 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned long,...) ; 
 struct dev_pm_opp* FUNC3 (struct device*,unsigned long,int) ; 
 int FUNC4 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC5 (struct dev_pm_opp*) ; 

__attribute__((used)) static unsigned long FUNC6(struct devfreq *df, unsigned long freq)
{
	struct device *dev = df->dev.parent;
	unsigned long voltage;
	struct dev_pm_opp *opp;

	opp = FUNC3(dev, freq, true);
	if (FUNC1(opp) == -ERANGE)
		opp = FUNC3(dev, freq, false);

	if (FUNC0(opp)) {
		FUNC2(dev, "Failed to find OPP for frequency %lu: %ld\n",
				    freq, FUNC1(opp));
		return 0;
	}

	voltage = FUNC4(opp) / 1000; /* mV */
	FUNC5(opp);

	if (voltage == 0) {
		FUNC2(dev,
				    "Failed to get voltage for frequency %lu\n",
				    freq);
	}

	return voltage;
}