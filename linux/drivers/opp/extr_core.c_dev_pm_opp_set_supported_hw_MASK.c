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
typedef  int /*<<< orphan*/  u32 ;
struct opp_table {unsigned int supported_hw_count; scalar_t__ supported_hw; int /*<<< orphan*/  opp_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct opp_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct opp_table* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct opp_table*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct opp_table *FUNC6(struct device *dev,
			const u32 *versions, unsigned int count)
{
	struct opp_table *opp_table;

	opp_table = FUNC2(dev);
	if (!opp_table)
		return FUNC0(-ENOMEM);

	/* Make sure there are no concurrent readers while updating opp_table */
	FUNC1(!FUNC5(&opp_table->opp_list));

	/* Another CPU that shares the OPP table has set the property ? */
	if (opp_table->supported_hw)
		return opp_table;

	opp_table->supported_hw = FUNC4(versions, count * sizeof(*versions),
					GFP_KERNEL);
	if (!opp_table->supported_hw) {
		FUNC3(opp_table);
		return FUNC0(-ENOMEM);
	}

	opp_table->supported_hw_count = count;

	return opp_table;
}