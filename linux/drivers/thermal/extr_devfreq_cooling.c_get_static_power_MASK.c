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
struct devfreq_cooling_device {TYPE_1__* power_ops; struct devfreq* devfreq; } ;
struct devfreq {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_static_power ) (struct devfreq*,unsigned long) ;} ;

/* Variables and functions */
 unsigned long FUNC0 (struct devfreq*,unsigned long) ; 
 unsigned long FUNC1 (struct devfreq*,unsigned long) ; 

__attribute__((used)) static unsigned long
FUNC2(struct devfreq_cooling_device *dfc, unsigned long freq)
{
	struct devfreq *df = dfc->devfreq;
	unsigned long voltage;

	if (!dfc->power_ops->get_static_power)
		return 0;

	voltage = FUNC0(df, freq);

	if (voltage == 0)
		return 0;

	return dfc->power_ops->get_static_power(df, voltage);
}