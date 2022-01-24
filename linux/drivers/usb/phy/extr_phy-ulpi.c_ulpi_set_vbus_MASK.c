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
struct usb_phy {int flags; } ;
struct usb_otg {struct usb_phy* usb_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ULPI_OTG_CTRL ; 
 unsigned int ULPI_OTG_CTRL_DRVVBUS ; 
 unsigned int ULPI_OTG_CTRL_DRVVBUS_EXT ; 
 int ULPI_OTG_DRVVBUS ; 
 int ULPI_OTG_DRVVBUS_EXT ; 
 unsigned int FUNC0 (struct usb_phy*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct usb_phy*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_otg *otg, bool on)
{
	struct usb_phy *phy = otg->usb_phy;
	unsigned int flags = FUNC0(phy, ULPI_OTG_CTRL);

	flags &= ~(ULPI_OTG_CTRL_DRVVBUS | ULPI_OTG_CTRL_DRVVBUS_EXT);

	if (on) {
		if (phy->flags & ULPI_OTG_DRVVBUS)
			flags |= ULPI_OTG_CTRL_DRVVBUS;

		if (phy->flags & ULPI_OTG_DRVVBUS_EXT)
			flags |= ULPI_OTG_CTRL_DRVVBUS_EXT;
	}

	return FUNC1(phy, flags, ULPI_OTG_CTRL);
}