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
struct st_rproc {int /*<<< orphan*/  clk; int /*<<< orphan*/  sw_reset; TYPE_1__* config; int /*<<< orphan*/  pwr_reset; int /*<<< orphan*/  boot_offset; int /*<<< orphan*/  boot_base; } ;
struct rproc {int /*<<< orphan*/  bootaddr; int /*<<< orphan*/  dev; struct st_rproc* priv; } ;
struct TYPE_2__ {scalar_t__ pwr_reset; scalar_t__ sw_reset; int /*<<< orphan*/  bootaddr_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rproc *rproc)
{
	struct st_rproc *ddata = rproc->priv;
	int err;

	FUNC4(ddata->boot_base, ddata->boot_offset,
			   ddata->config->bootaddr_mask, rproc->bootaddr);

	err = FUNC1(ddata->clk);
	if (err) {
		FUNC2(&rproc->dev, "Failed to enable clock\n");
		return err;
	}

	if (ddata->config->sw_reset) {
		err = FUNC6(ddata->sw_reset);
		if (err) {
			FUNC2(&rproc->dev, "Failed to deassert S/W Reset\n");
			goto sw_reset_fail;
		}
	}

	if (ddata->config->pwr_reset) {
		err = FUNC6(ddata->pwr_reset);
		if (err) {
			FUNC2(&rproc->dev, "Failed to deassert Power Reset\n");
			goto pwr_reset_fail;
		}
	}

	FUNC3(&rproc->dev, "Started from 0x%x\n", rproc->bootaddr);

	return 0;


pwr_reset_fail:
	if (ddata->config->pwr_reset)
		FUNC5(ddata->sw_reset);
sw_reset_fail:
	FUNC0(ddata->clk);

	return err;
}