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
typedef  int /*<<< orphan*/  u32 ;
struct sun4i_usb_phy_data {scalar_t__ base; } ;
struct sun4i_usb_phy {int dummy; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_ISCR ; 
 struct sun4i_usb_phy* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct sun4i_usb_phy_data* FUNC2 (struct sun4i_usb_phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct phy *_phy, u32 clr, u32 set)
{
	struct sun4i_usb_phy *phy = FUNC0(_phy);
	struct sun4i_usb_phy_data *data = FUNC2(phy);
	u32 iscr;

	iscr = FUNC1(data->base + REG_ISCR);
	iscr &= ~clr;
	iscr |= set;
	FUNC3(iscr, data->base + REG_ISCR);
}