#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  enum tegra_io_pad { ____Placeholder_tegra_io_pad } tegra_io_pad ;
struct TYPE_6__ {int /*<<< orphan*/  powergates_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IO_DPD_REQ_CODE_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* pmc ; 
 int FUNC3 (TYPE_1__*,unsigned long,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,int,unsigned long*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,unsigned long) ; 

int FUNC7(enum tegra_io_pad id)
{
	unsigned long request, status;
	u32 mask;
	int err;

	FUNC1(&pmc->powergates_lock);

	err = FUNC4(pmc, id, &request, &status, &mask);
	if (err < 0) {
		FUNC0(pmc->dev, "failed to prepare I/O pad: %d\n", err);
		goto unlock;
	}

	FUNC6(pmc, IO_DPD_REQ_CODE_OFF | mask, request);

	err = FUNC3(pmc, status, mask, 0, 250);
	if (err < 0) {
		FUNC0(pmc->dev, "failed to enable I/O pad: %d\n", err);
		goto unlock;
	}

	FUNC5(pmc);

unlock:
	FUNC2(&pmc->powergates_lock);
	return err;
}