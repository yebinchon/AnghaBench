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
struct rockchip_usb2phy_port {scalar_t__ port_id; scalar_t__ mode; int /*<<< orphan*/  sm_work; int /*<<< orphan*/  chg_work; int /*<<< orphan*/  otg_sm_work; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ USB2PHY_PORT_HOST ; 
 scalar_t__ USB2PHY_PORT_OTG ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 scalar_t__ USB_DR_MODE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rockchip_usb2phy_port* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *phy)
{
	struct rockchip_usb2phy_port *rport = FUNC1(phy);

	if (rport->port_id == USB2PHY_PORT_OTG &&
	    rport->mode != USB_DR_MODE_HOST &&
	    rport->mode != USB_DR_MODE_UNKNOWN) {
		FUNC0(&rport->otg_sm_work);
		FUNC0(&rport->chg_work);
	} else if (rport->port_id == USB2PHY_PORT_HOST)
		FUNC0(&rport->sm_work);

	return 0;
}