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
struct TYPE_2__ {struct device* parent; } ;
struct rproc {TYPE_1__ dev; struct da8xx_rproc* priv; } ;
struct device {int dummy; } ;
struct da8xx_rproc {int /*<<< orphan*/  dsp_clk; int /*<<< orphan*/  dsp_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rproc *rproc)
{
	struct da8xx_rproc *drproc = rproc->priv;
	struct device *dev = rproc->dev.parent;
	int ret;

	ret = FUNC2(drproc->dsp_reset);
	if (ret) {
		FUNC1(dev, "reset_control_assert() failed: %d\n", ret);
		return ret;
	}

	FUNC0(drproc->dsp_clk);

	return 0;
}