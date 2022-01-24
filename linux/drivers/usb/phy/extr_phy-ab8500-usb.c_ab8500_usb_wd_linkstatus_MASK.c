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
struct ab8500_usb {int /*<<< orphan*/  dev; int /*<<< orphan*/  ab8500; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_PHY_CTRL_REG ; 
 int /*<<< orphan*/  AB8500_V20_31952_DISABLE_DELAY_US ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ab8500_usb *ab, u8 bit)
{
	/* Workaround for v2.0 bug # 31952 */
	if (FUNC1(ab->ab8500)) {
		FUNC0(ab->dev,
				AB8500_USB, AB8500_USB_PHY_CTRL_REG,
				bit, bit);
		FUNC2(AB8500_V20_31952_DISABLE_DELAY_US);
	}
}