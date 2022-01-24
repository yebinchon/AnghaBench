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
struct opp_table {int /*<<< orphan*/ * dentry; int /*<<< orphan*/  dev_list; } ;
struct opp_device {int /*<<< orphan*/ * dentry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct opp_device*,struct opp_table*) ; 

void FUNC3(struct opp_device *opp_dev,
			  struct opp_table *opp_table)
{
	if (opp_dev->dentry == opp_table->dentry) {
		/* Move the real dentry object under another device */
		if (!FUNC1(&opp_table->dev_list)) {
			FUNC2(opp_dev, opp_table);
			goto out;
		}
		opp_table->dentry = NULL;
	}

	FUNC0(opp_dev->dentry);

out:
	opp_dev->dentry = NULL;
}