#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ab8500_fg {int /*<<< orphan*/  dev; TYPE_2__* bm; } ;
struct TYPE_4__ {TYPE_1__* fg_params; } ;
struct TYPE_3__ {int battok_falling_th_sel0; int battok_raising_th_sel1; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_BATT_OK_REG ; 
 int /*<<< orphan*/  AB8500_SYS_CTRL2_BLOCK ; 
 int BATT_OK_INCREMENT ; 
 int BATT_OK_MIN ; 
 int FUNC0 (struct ab8500_fg*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct ab8500_fg *di)
{
	int selected;
	int sel0;
	int sel1;
	int cbp_sel0;
	int cbp_sel1;
	int ret;
	int new_val;

	sel0 = di->bm->fg_params->battok_falling_th_sel0;
	sel1 = di->bm->fg_params->battok_raising_th_sel1;

	cbp_sel0 = FUNC0(di, sel0);
	cbp_sel1 = FUNC0(di, sel1);

	selected = BATT_OK_MIN + cbp_sel0 * BATT_OK_INCREMENT;

	if (selected != sel0)
		FUNC3(di->dev, "Invalid voltage step:%d, using %d %d\n",
			sel0, selected, cbp_sel0);

	selected = BATT_OK_MIN + cbp_sel1 * BATT_OK_INCREMENT;

	if (selected != sel1)
		FUNC3(di->dev, "Invalid voltage step:%d, using %d %d\n",
			sel1, selected, cbp_sel1);

	new_val = cbp_sel0 | (cbp_sel1 << 4);

	FUNC2(di->dev, "using: %x %d %d\n", new_val, cbp_sel0, cbp_sel1);
	ret = FUNC1(di->dev, AB8500_SYS_CTRL2_BLOCK,
		AB8500_BATT_OK_REG, new_val);
	return ret;
}