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
struct mxs_phy {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct mxs_phy*) ; 
 struct mxs_phy* FUNC3 (struct usb_phy*) ; 

__attribute__((used)) static int FUNC4(struct usb_phy *phy)
{
	int ret;
	struct mxs_phy *mxs_phy = FUNC3(phy);

	FUNC1();
	ret = FUNC0(mxs_phy->clk);
	if (ret)
		return ret;

	return FUNC2(mxs_phy);
}