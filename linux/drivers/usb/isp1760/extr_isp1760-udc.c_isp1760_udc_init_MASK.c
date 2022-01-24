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
typedef  int u32 ;
typedef  int u16 ;
struct isp1760_udc {TYPE_1__* isp; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CHIPID ; 
 int /*<<< orphan*/  DC_MODE ; 
 int /*<<< orphan*/  DC_SCRATCH ; 
 int DC_SFRESET ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (struct isp1760_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp1760_udc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct isp1760_udc *udc)
{
	u16 scratch;
	u32 chipid;

	/*
	 * Check that the controller is present by writing to the scratch
	 * register, modifying the bus pattern by reading from the chip ID
	 * register, and reading the scratch register value back. The chip ID
	 * and scratch register contents must match the expected values.
	 */
	FUNC2(udc, DC_SCRATCH, 0xbabe);
	chipid = FUNC1(udc, DC_CHIPID);
	scratch = FUNC1(udc, DC_SCRATCH);

	if (scratch != 0xbabe) {
		FUNC0(udc->isp->dev,
			"udc: scratch test failed (0x%04x/0x%08x)\n",
			scratch, chipid);
		return -ENODEV;
	}

	if (chipid != 0x00011582 && chipid != 0x00158210) {
		FUNC0(udc->isp->dev, "udc: invalid chip ID 0x%08x\n", chipid);
		return -ENODEV;
	}

	/* Reset the device controller. */
	FUNC2(udc, DC_MODE, DC_SFRESET);
	FUNC3(10000, 11000);
	FUNC2(udc, DC_MODE, 0);
	FUNC3(10000, 11000);

	return 0;
}