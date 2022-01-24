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
typedef  scalar_t__ u32 ;
struct usbhs_priv {int dummy; } ;
struct platform_device {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SUSPM ; 
 int /*<<< orphan*/  SUSPMODE ; 
 int /*<<< orphan*/  SYSCFG ; 
 int /*<<< orphan*/  UCKSEL ; 
 int /*<<< orphan*/  UPLLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbhs_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usbhs_priv* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct usbhs_priv *priv = FUNC4(pdev);
	struct device_node *usb_x1_clk, *extal_clk;
	u32 freq_usb = 0, freq_extal = 0;

	/* Input Clock Selection (NOTE: ch0 controls both ch0 and ch1) */
	usb_x1_clk = FUNC1(NULL, "usb_x1");
	extal_clk = FUNC1(NULL, "extal");
	FUNC2(usb_x1_clk, "clock-frequency", &freq_usb);
	FUNC2(extal_clk, "clock-frequency", &freq_extal);
	if (freq_usb == 0) {
		if (freq_extal == 12000000) {
			/* Select 12MHz XTAL */
			FUNC3(priv, SYSCFG, UCKSEL, UCKSEL);
		} else {
			FUNC0(FUNC5(priv), "A 48MHz USB clock or 12MHz main clock is required.\n");
			return -EIO;
		}
	}

	/* Enable USB PLL (NOTE: ch0 controls both ch0 and ch1) */
	FUNC3(priv, SYSCFG, UPLLE, UPLLE);
	FUNC6(1000, 2000);
	FUNC3(priv, SUSPMODE, SUSPM, SUSPM);

	return 0;
}