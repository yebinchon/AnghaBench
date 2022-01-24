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
struct opp_table {scalar_t__ dentry; } ;
struct opp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opp_device*,struct opp_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct opp_device*,struct opp_table*) ; 

void FUNC2(struct opp_device *opp_dev, struct opp_table *opp_table)
{
	if (opp_table->dentry)
		FUNC1(opp_dev, opp_table);
	else
		FUNC0(opp_dev, opp_table);
}