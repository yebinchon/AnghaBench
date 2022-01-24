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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,char*) ; 
 int /*<<< orphan*/  devm_usb_phy_match ; 
 int /*<<< orphan*/  devm_usb_phy_release ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_phy*) ; 

void FUNC2(struct device *dev, struct usb_phy *phy)
{
	int r;

	r = FUNC1(dev, devm_usb_phy_release, devm_usb_phy_match, phy);
	FUNC0(dev, r, "couldn't find PHY resource\n");
}