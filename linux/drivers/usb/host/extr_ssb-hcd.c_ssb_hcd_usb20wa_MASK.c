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
struct TYPE_2__ {scalar_t__ coreid; } ;
struct ssb_device {TYPE_1__ id; } ;

/* Variables and functions */
 scalar_t__ SSB_DEV_USB20_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct ssb_device*) ; 
 int FUNC1 (struct ssb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct ssb_device *dev)
{
	if (dev->id.coreid == SSB_DEV_USB20_HOST) {
		/*
		 * USB 2.0 special considerations:
		 *
		 * In addition to the standard SSB reset sequence, the Host
		 * Control Register must be programmed to bring the USB core
		 * and various phy components out of reset.
		 */
		FUNC2(dev, 0x200, 0x7ff);

		/* Change Flush control reg */
		FUNC2(dev, 0x400, FUNC1(dev, 0x400) & ~8);
		FUNC1(dev, 0x400);

		/* Change Shim control reg */
		FUNC2(dev, 0x304, FUNC1(dev, 0x304) & ~0x100);
		FUNC1(dev, 0x304);

		FUNC3(1);

		FUNC0(dev);
	}
}