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
struct usb_phy {scalar_t__ io_priv; } ;
struct mxs_phy {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int BM_USBPHY_CTRL_CLKGATE ; 
 int BM_USBPHY_CTRL_ENAUTOCLR_CLKGATE ; 
 int BM_USBPHY_CTRL_ENAUTOCLR_PHY_PWD ; 
 int BM_USBPHY_CTRL_ENAUTOCLR_USBCLKGATE ; 
 int BM_USBPHY_CTRL_ENAUTOSET_USBCLKS ; 
 int BM_USBPHY_CTRL_ENAUTO_PWRON_PLL ; 
 int BM_USBPHY_CTRL_ENDPDMCHG_WKUP ; 
 int BM_USBPHY_CTRL_ENIDCHG_WKUP ; 
 int BM_USBPHY_CTRL_ENVBUSCHG_WKUP ; 
 scalar_t__ HW_USBPHY_CTRL_CLR ; 
 scalar_t__ HW_USBPHY_CTRL_SET ; 
 scalar_t__ HW_USBPHY_PWD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mxs_phy*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 struct mxs_phy* FUNC3 (struct usb_phy*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct usb_phy *phy)
{
	struct mxs_phy *mxs_phy = FUNC3(phy);
	u32 value = BM_USBPHY_CTRL_ENVBUSCHG_WKUP |
			BM_USBPHY_CTRL_ENDPDMCHG_WKUP |
			BM_USBPHY_CTRL_ENIDCHG_WKUP |
			BM_USBPHY_CTRL_ENAUTOSET_USBCLKS |
			BM_USBPHY_CTRL_ENAUTOCLR_USBCLKGATE |
			BM_USBPHY_CTRL_ENAUTOCLR_PHY_PWD |
			BM_USBPHY_CTRL_ENAUTOCLR_CLKGATE |
			BM_USBPHY_CTRL_ENAUTO_PWRON_PLL;

	FUNC4(value, phy->io_priv + HW_USBPHY_CTRL_CLR);
	FUNC4(0xffffffff, phy->io_priv + HW_USBPHY_PWD);

	FUNC4(BM_USBPHY_CTRL_CLKGATE,
	       phy->io_priv + HW_USBPHY_CTRL_SET);

	if (FUNC1(mxs_phy))
		FUNC2(phy->io_priv, false);

	FUNC0(mxs_phy->clk);
}