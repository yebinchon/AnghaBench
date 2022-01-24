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
typedef  int u32 ;
struct keystone_rproc {int /*<<< orphan*/  reset; int /*<<< orphan*/  dev; int /*<<< orphan*/  boot_offset; int /*<<< orphan*/  dev_ctrl; } ;

/* Variables and functions */
 int EINVAL ; 
 int SZ_1K ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct keystone_rproc *ksproc, u32 boot_addr)
{
	int ret;

	if (boot_addr & (SZ_1K - 1)) {
		FUNC0(ksproc->dev, "invalid boot address 0x%x, must be aligned on a 1KB boundary\n",
			boot_addr);
		return -EINVAL;
	}

	ret = FUNC1(ksproc->dev_ctrl, ksproc->boot_offset, boot_addr);
	if (ret) {
		FUNC0(ksproc->dev, "regmap_write of boot address failed, status = %d\n",
			ret);
		return ret;
	}

	FUNC2(ksproc->reset);

	return 0;
}