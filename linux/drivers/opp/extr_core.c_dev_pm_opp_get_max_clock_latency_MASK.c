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
struct opp_table {unsigned long clock_latency_ns_max; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opp_table*) ; 
 struct opp_table* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_table*) ; 

unsigned long FUNC3(struct device *dev)
{
	struct opp_table *opp_table;
	unsigned long clock_latency_ns;

	opp_table = FUNC1(dev);
	if (FUNC0(opp_table))
		return 0;

	clock_latency_ns = opp_table->clock_latency_ns_max;

	FUNC2(opp_table);

	return clock_latency_ns;
}