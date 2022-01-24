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
struct st_rproc {int /*<<< orphan*/ * mbox_chan; int /*<<< orphan*/  clk; } ;
struct rproc {struct st_rproc* priv; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int MBOX_MAX ; 
 int ST_RPROC_MAX_VRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rproc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rproc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rproc*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct rproc *rproc = FUNC2(pdev);
	struct st_rproc *ddata = rproc->priv;
	int i;

	FUNC3(rproc);

	FUNC0(ddata->clk);

	for (i = 0; i < ST_RPROC_MAX_VRING * MBOX_MAX; i++)
		FUNC1(ddata->mbox_chan[i]);

	FUNC4(rproc);

	return 0;
}