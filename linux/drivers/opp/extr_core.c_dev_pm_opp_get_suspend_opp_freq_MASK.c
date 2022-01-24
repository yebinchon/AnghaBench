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
struct opp_table {TYPE_1__* suspend_opp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ available; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct opp_table*) ; 
 struct opp_table* FUNC1 (struct device*) ; 
 unsigned long FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 

unsigned long FUNC4(struct device *dev)
{
	struct opp_table *opp_table;
	unsigned long freq = 0;

	opp_table = FUNC1(dev);
	if (FUNC0(opp_table))
		return 0;

	if (opp_table->suspend_opp && opp_table->suspend_opp->available)
		freq = FUNC2(opp_table->suspend_opp);

	FUNC3(opp_table);

	return freq;
}