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
struct opp_table {int /*<<< orphan*/  lock; } ;
struct opp_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct opp_device* FUNC0 (struct device const*,struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct opp_device *FUNC3(const struct device *dev,
				struct opp_table *opp_table)
{
	struct opp_device *opp_dev;

	FUNC1(&opp_table->lock);
	opp_dev = FUNC0(dev, opp_table);
	FUNC2(&opp_table->lock);

	return opp_dev;
}