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
struct tegra_xusb_padctl {int /*<<< orphan*/  lock; } ;
struct tegra186_xusb_padctl {scalar_t__ bias_pad_enable; int /*<<< orphan*/  usb2_trk_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB2_PD_TRK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  XUSB_PADCTL_USB2_BIAS_PAD_CTL1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra186_xusb_padctl* FUNC6 (struct tegra_xusb_padctl*) ; 

__attribute__((used)) static void FUNC7(struct tegra_xusb_padctl *padctl)
{
	struct tegra186_xusb_padctl *priv = FUNC6(padctl);
	u32 value;

	FUNC2(&padctl->lock);

	if (FUNC0(priv->bias_pad_enable == 0)) {
		FUNC3(&padctl->lock);
		return;
	}

	if (--priv->bias_pad_enable > 0) {
		FUNC3(&padctl->lock);
		return;
	}

	value = FUNC4(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);
	value |= USB2_PD_TRK;
	FUNC5(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL1);

	FUNC1(priv->usb2_trk_clk);

	FUNC3(&padctl->lock);
}