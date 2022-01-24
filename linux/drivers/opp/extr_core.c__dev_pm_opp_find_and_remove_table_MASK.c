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
struct opp_table {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct opp_table*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (struct opp_table*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,int) ; 
 struct opp_table* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct opp_table*) ; 
 char* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct opp_table*) ; 

void FUNC8(struct device *dev)
{
	struct opp_table *opp_table;

	/* Check for existing table for 'dev' */
	opp_table = FUNC4(dev);
	if (FUNC0(opp_table)) {
		int error = FUNC2(opp_table);

		if (error != -ENODEV)
			FUNC3(1, "%s: opp_table: %d\n",
			     FUNC1(dev) ?
					"Invalid device" : FUNC6(dev),
			     error);
		return;
	}

	FUNC5(opp_table);

	/* Drop reference taken by _find_opp_table() */
	FUNC7(opp_table);

	/* Drop reference taken while the OPP table was added */
	FUNC7(opp_table);
}