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
typedef  int u16 ;
struct bcm_ns_usb3 {scalar_t__ ccb_mii; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BCMA_CCB_MII_MNG_CMD_DATA ; 
 int FUNC0 (struct bcm_ns_usb3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct bcm_ns_usb3 *usb3, u16 reg,
					  u16 value)
{
	u32 tmp = 0;
	int err;

	err = FUNC0(usb3);
	if (err < 0) {
		FUNC1(usb3->dev, "Couldn't write 0x%08x value\n", value);
		return err;
	}

	/* TODO: Use a proper MDIO bus layer */
	tmp |= 0x58020000; /* Magic value for MDIO PHY write */
	tmp |= reg << 18;
	tmp |= value;
	FUNC2(tmp, usb3->ccb_mii + BCMA_CCB_MII_MNG_CMD_DATA);

	return FUNC0(usb3);
}