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
struct device {int dummy; } ;
struct fsl_mc_device {struct device dev; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_IRQ_INDEX_IF ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct ethsw_core* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_mc_device*) ; 

__attribute__((used)) static void FUNC4(struct fsl_mc_device *sw_dev)
{
	struct device *dev = &sw_dev->dev;
	struct ethsw_core *ethsw = FUNC1(dev);
	int err;

	err = FUNC2(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  DPSW_IRQ_INDEX_IF, 0);
	if (err)
		FUNC0(dev, "dpsw_set_irq_enable err %d\n", err);

	FUNC3(sw_dev);
}