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
struct rproc {int /*<<< orphan*/  dev; int /*<<< orphan*/  firmware; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_ACTION_HOTPLUG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rproc_auto_boot_callback ; 

__attribute__((used)) static int FUNC2(struct rproc *rproc)
{
	int ret;

	/*
	 * We're initiating an asynchronous firmware loading, so we can
	 * be built-in kernel code, without hanging the boot process.
	 */
	ret = FUNC1(THIS_MODULE, FW_ACTION_HOTPLUG,
				      rproc->firmware, &rproc->dev, GFP_KERNEL,
				      rproc, rproc_auto_boot_callback);
	if (ret < 0)
		FUNC0(&rproc->dev, "request_firmware_nowait err: %d\n", ret);

	return ret;
}