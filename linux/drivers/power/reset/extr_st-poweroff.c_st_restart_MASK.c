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
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask_rst_msk; int /*<<< orphan*/  offset_rst_msk; int /*<<< orphan*/  regmap; int /*<<< orphan*/  mask_rst; int /*<<< orphan*/  offset_rst; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* st_restart_syscfg ; 

__attribute__((used)) static int FUNC1(struct notifier_block *this, unsigned long mode,
		      void *cmd)
{
	/* reset syscfg updated */
	FUNC0(st_restart_syscfg->regmap,
			   st_restart_syscfg->offset_rst,
			   st_restart_syscfg->mask_rst,
			   0);

	/* unmask the reset */
	FUNC0(st_restart_syscfg->regmap,
			   st_restart_syscfg->offset_rst_msk,
			   st_restart_syscfg->mask_rst_msk,
			   0);

	return NOTIFY_DONE;
}