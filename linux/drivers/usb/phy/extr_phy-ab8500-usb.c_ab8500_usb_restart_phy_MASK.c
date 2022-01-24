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
struct ab8500_usb {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_DEVICE_EN ; 
 int /*<<< orphan*/  AB8500_BIT_PHY_CTRL_HOST_EN ; 
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_PHY_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ab8500_usb *ab)
{
	FUNC0(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			AB8500_BIT_PHY_CTRL_DEVICE_EN,
			AB8500_BIT_PHY_CTRL_DEVICE_EN);

	FUNC1(100);

	FUNC0(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			AB8500_BIT_PHY_CTRL_DEVICE_EN,
			0);

	FUNC0(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			AB8500_BIT_PHY_CTRL_HOST_EN,
			AB8500_BIT_PHY_CTRL_HOST_EN);

	FUNC1(100);

	FUNC0(ab->dev,
			AB8500_USB, AB8500_USB_PHY_CTRL_REG,
			AB8500_BIT_PHY_CTRL_HOST_EN,
			0);
}