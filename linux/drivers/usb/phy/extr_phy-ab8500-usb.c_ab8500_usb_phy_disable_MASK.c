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
typedef  int /*<<< orphan*/  u8 ;
struct ab8500_usb {int /*<<< orphan*/  pinctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  pins_sleep; int /*<<< orphan*/  sysclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_DEVICE_EN ; 
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_HOST_EN ; 
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_PHY_CTRL_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PINCTRL_STATE_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct ab8500_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct ab8500_usb *ab, bool sel_host)
{
	u8 bit;
	bit = sel_host ? AB8500_BIT_PHY_CTRL_HOST_EN :
		AB8500_BIT_PHY_CTRL_DEVICE_EN;

	FUNC2(ab, bit);

	FUNC4(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			bit, 0);

	/* Needed to disable the phy.*/
	FUNC3(ab);

	FUNC5(ab->sysclk);

	FUNC1(ab);

	if (!FUNC0(ab->pinctrl)) {
		/* configure USB pins to SLEEP state */
		ab->pins_sleep = FUNC8(ab->pinctrl,
				PINCTRL_STATE_SLEEP);

		if (FUNC0(ab->pins_sleep))
			FUNC6(ab->dev, "could not get sleep pinstate\n");
		else if (FUNC10(ab->pinctrl, ab->pins_sleep))
			FUNC7(ab->dev, "could not set pins to sleep state\n");

		/*
		 * as USB pins are shared with iddet, release them to allow
		 * iddet to request them
		 */
		FUNC9(ab->pinctrl);
	}
}