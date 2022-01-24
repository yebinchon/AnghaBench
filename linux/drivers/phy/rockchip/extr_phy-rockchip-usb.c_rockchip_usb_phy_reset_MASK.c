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
struct rockchip_usb_phy {scalar_t__ reset; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 struct rockchip_usb_phy* FUNC0 (struct phy*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct phy *_phy)
{
	struct rockchip_usb_phy *phy = FUNC0(_phy);

	if (phy->reset) {
		FUNC1(phy->reset);
		FUNC3(10);
		FUNC2(phy->reset);
	}

	return 0;
}