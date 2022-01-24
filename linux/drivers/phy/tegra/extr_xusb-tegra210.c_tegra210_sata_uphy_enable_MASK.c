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
struct tegra_xusb_sata_pad {scalar_t__ enable; int /*<<< orphan*/  pll; int /*<<< orphan*/  rst; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  sata; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK ; 
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT ; 
 int XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL ; 
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE ; 
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN ; 
 int XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD ; 
 int /*<<< orphan*/  XUSB_PADCTL_UPHY_PLL_S0_CTL1 ; 
 int /*<<< orphan*/  XUSB_PADCTL_UPHY_PLL_S0_CTL2 ; 
 int /*<<< orphan*/  XUSB_PADCTL_UPHY_PLL_S0_CTL4 ; 
 int /*<<< orphan*/  XUSB_PADCTL_UPHY_PLL_S0_CTL5 ; 
 int /*<<< orphan*/  XUSB_PADCTL_UPHY_PLL_S0_CTL8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 struct tegra_xusb_sata_pad* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static int FUNC13(struct tegra_xusb_padctl *padctl, bool usb)
{
	struct tegra_xusb_sata_pad *sata = FUNC11(padctl->sata);
	unsigned long timeout;
	u32 value;
	int err;

	if (sata->enable > 0) {
		sata->enable++;
		return 0;
	}

	err = FUNC1(sata->pll);
	if (err < 0)
		return err;

	err = FUNC6(sata->rst);
	if (err < 0)
		goto disable;

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
	value &= ~(XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_MASK <<
		   XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT);
	value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_VAL <<
		 XUSB_PADCTL_UPHY_PLL_CTL2_CAL_CTRL_SHIFT;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL5);
	value &= ~(XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_MASK <<
		   XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT);
	value |= XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_VAL <<
		 XUSB_PADCTL_UPHY_PLL_CTL5_DCO_CTRL_SHIFT;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL5);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value |= XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
	value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
	value |= XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL4);
	value &= ~((XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_MASK <<
		    XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT) |
		   (XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_MASK <<
		    XUSB_PADCTL_UPHY_PLL_CTL4_REFCLK_SEL_SHIFT));
	value |= XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_EN;

	if (usb)
		value |= (XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_USB_VAL <<
			  XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT);
	else
		value |= (XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SATA_VAL <<
			  XUSB_PADCTL_UPHY_PLL_CTL4_TXCLKREF_SEL_SHIFT);

	value &= ~XUSB_PADCTL_UPHY_PLL_CTL4_XDIGCLK_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL4);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value &= ~((XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_MASK <<
		    XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_MDIV_SHIFT) |
		   (XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_MASK <<
		    XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT));

	if (usb)
		value |= XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_USB_VAL <<
			 XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT;
	else
		value |= XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SATA_VAL <<
			 XUSB_PADCTL_UPHY_PLL_CTL1_FREQ_NDIV_SHIFT;

	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL1_IDDQ;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value &= ~(XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_MASK <<
		   XUSB_PADCTL_UPHY_PLL_CTL1_SLEEP_SHIFT);
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	FUNC12(10, 20);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL4);
	value |= XUSB_PADCTL_UPHY_PLL_CTL4_REFCLKBUF_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL4);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
	value |= XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

	timeout = jiffies + FUNC2(100);

	while (FUNC10(jiffies, timeout)) {
		value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
		if (value & XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE)
			break;

		FUNC12(10, 20);
	}

	if (FUNC9(jiffies, timeout)) {
		err = -ETIMEDOUT;
		goto reset;
	}

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL2_CAL_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

	timeout = jiffies + FUNC2(100);

	while (FUNC10(jiffies, timeout)) {
		value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
		if (!(value & XUSB_PADCTL_UPHY_PLL_CTL2_CAL_DONE))
			break;

		FUNC12(10, 20);
	}

	if (FUNC9(jiffies, timeout)) {
		err = -ETIMEDOUT;
		goto reset;
	}

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value |= XUSB_PADCTL_UPHY_PLL_CTL1_ENABLE;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	timeout = jiffies + FUNC2(100);

	while (FUNC10(jiffies, timeout)) {
		value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
		if (value & XUSB_PADCTL_UPHY_PLL_CTL1_LOCKDET_STATUS)
			break;

		FUNC12(10, 20);
	}

	if (FUNC9(jiffies, timeout)) {
		err = -ETIMEDOUT;
		goto reset;
	}

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
	value |= XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN |
		 XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

	timeout = jiffies + FUNC2(100);

	while (FUNC10(jiffies, timeout)) {
		value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
		if (value & XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE)
			break;

		FUNC12(10, 20);
	}

	if (FUNC9(jiffies, timeout)) {
		err = -ETIMEDOUT;
		goto reset;
	}

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

	timeout = jiffies + FUNC2(100);

	while (FUNC10(jiffies, timeout)) {
		value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
		if (!(value & XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_DONE))
			break;

		FUNC12(10, 20);
	}

	if (FUNC9(jiffies, timeout)) {
		err = -ETIMEDOUT;
		goto reset;
	}

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_CLK_EN;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

	FUNC7();

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL1);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL1_PWR_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL1);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL2);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL2_CAL_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL2);

	value = FUNC3(padctl, XUSB_PADCTL_UPHY_PLL_S0_CTL8);
	value &= ~XUSB_PADCTL_UPHY_PLL_CTL8_RCAL_OVRD;
	FUNC4(padctl, value, XUSB_PADCTL_UPHY_PLL_S0_CTL8);

	FUNC12(10, 20);

	FUNC8();

	sata->enable++;

	return 0;

reset:
	FUNC5(sata->rst);
disable:
	FUNC0(sata->pll);
	return err;
}