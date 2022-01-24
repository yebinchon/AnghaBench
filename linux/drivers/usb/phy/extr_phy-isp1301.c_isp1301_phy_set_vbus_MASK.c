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
struct usb_phy {int dummy; } ;
struct isp1301 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP1301_I2C_OTG_CONTROL_1 ; 
 int /*<<< orphan*/  OTG1_VBUS_DRV ; 
 int /*<<< orphan*/  FUNC0 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1301*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct isp1301* FUNC2 (struct usb_phy*) ; 

__attribute__((used)) static int FUNC3(struct usb_phy *phy, int on)
{
	struct isp1301 *isp = FUNC2(phy);

	if (on)
		FUNC1(isp, ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DRV);
	else
		FUNC0(isp, ISP1301_I2C_OTG_CONTROL_1, OTG1_VBUS_DRV);

	return 0;
}