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
struct sun4i_usb_phy {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_SQUELCH_DETECT ; 
 struct sun4i_usb_phy* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (struct sun4i_usb_phy*,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct phy *_phy, bool enabled)
{
	struct sun4i_usb_phy *phy = FUNC0(_phy);

	FUNC1(phy, PHY_SQUELCH_DETECT, enabled ? 0 : 2, 2);
}