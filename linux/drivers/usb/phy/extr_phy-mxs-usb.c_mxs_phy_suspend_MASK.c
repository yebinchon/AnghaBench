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
struct usb_phy {scalar_t__ io_priv; } ;
struct mxs_phy {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int BM_USBPHY_CTRL_CLKGATE ; 
 scalar_t__ HW_USBPHY_CTRL_CLR ; 
 scalar_t__ HW_USBPHY_CTRL_SET ; 
 scalar_t__ HW_USBPHY_PWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct mxs_phy*) ; 
 int FUNC4 (struct mxs_phy*) ; 
 struct mxs_phy* FUNC5 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct usb_phy *x, int suspend)
{
	int ret;
	struct mxs_phy *mxs_phy = FUNC5(x);
	bool low_speed_connection, vbus_is_on;

	low_speed_connection = FUNC4(mxs_phy);
	vbus_is_on = FUNC3(mxs_phy);

	if (suspend) {
		/*
		 * FIXME: Do not power down RXPWD1PT1 bit for low speed
		 * connect. The low speed connection will have problem at
		 * very rare cases during usb suspend and resume process.
		 */
		if (low_speed_connection & vbus_is_on) {
			/*
			 * If value to be set as pwd value is not 0xffffffff,
			 * several 32Khz cycles are needed.
			 */
			FUNC2();
			FUNC6(0xffbfffff, x->io_priv + HW_USBPHY_PWD);
		} else {
			FUNC6(0xffffffff, x->io_priv + HW_USBPHY_PWD);
		}
		FUNC6(BM_USBPHY_CTRL_CLKGATE,
		       x->io_priv + HW_USBPHY_CTRL_SET);
		FUNC0(mxs_phy->clk);
	} else {
		FUNC2();
		ret = FUNC1(mxs_phy->clk);
		if (ret)
			return ret;
		FUNC6(BM_USBPHY_CTRL_CLKGATE,
		       x->io_priv + HW_USBPHY_CTRL_CLR);
		FUNC6(0, x->io_priv + HW_USBPHY_PWD);
	}

	return 0;
}