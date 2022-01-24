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
typedef  int u8 ;
struct ds1wm_data {int int_en_reg_none; TYPE_1__* pdev; int /*<<< orphan*/ * write_complete; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DS1WM_DATA ; 
 int DS1WM_INTEN_ETMT ; 
 int /*<<< orphan*/  DS1WM_INT_EN ; 
 int /*<<< orphan*/  DS1WM_TIMEOUT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1wm_data*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_done ; 

__attribute__((used)) static int FUNC4(struct ds1wm_data *ds1wm_data, u8 data)
{
	unsigned long timeleft;
	FUNC0(write_done);
	ds1wm_data->write_complete = &write_done;

	FUNC2(ds1wm_data, DS1WM_INT_EN,
	ds1wm_data->int_en_reg_none | DS1WM_INTEN_ETMT);

	FUNC2(ds1wm_data, DS1WM_DATA, data);

	timeleft = FUNC3(&write_done, DS1WM_TIMEOUT);

	ds1wm_data->write_complete = NULL;
	if (!timeleft) {
		FUNC1(&ds1wm_data->pdev->dev, "write failed, timed out\n");
		return -ETIMEDOUT;
	}

	return 0;
}