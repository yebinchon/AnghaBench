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
struct ab8500_usb {int /*<<< orphan*/  dev; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  pinctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_DEVICE_EN ; 
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_HOST_EN ; 
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_PHY_CTRL_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PINCTRL_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct ab8500_usb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ab8500_usb *ab, bool sel_host)
{
	u8 bit;
	bit = sel_host ? AB8500_BIT_PHY_CTRL_HOST_EN :
		AB8500_BIT_PHY_CTRL_DEVICE_EN;

	/* mux and configure USB pins to DEFAULT state */
	ab->pinctrl = FUNC5(ab->dev, PINCTRL_STATE_DEFAULT);
	if (FUNC0(ab->pinctrl))
		FUNC4(ab->dev, "could not get/set default pinstate\n");

	if (FUNC3(ab->sysclk))
		FUNC4(ab->dev, "can't prepare/enable clock\n");

	FUNC1(ab);

	FUNC2(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			bit, bit);
}