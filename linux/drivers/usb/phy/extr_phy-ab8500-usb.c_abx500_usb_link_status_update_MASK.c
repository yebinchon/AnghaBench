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
typedef  int u8 ;
struct ab8500_usb {int /*<<< orphan*/  dev; int /*<<< orphan*/  ab8500; } ;
typedef  enum ab8505_usb_link_status { ____Placeholder_ab8505_usb_link_status } ab8505_usb_link_status ;
typedef  enum ab8500_usb_link_status { ____Placeholder_ab8500_usb_link_status } ab8500_usb_link_status ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_USB ; 
 int /*<<< orphan*/  AB8500_USB_LINE_STAT_REG ; 
 int /*<<< orphan*/  AB8505_USB_LINE_STAT_REG ; 
 int FUNC0 (struct ab8500_usb*,int) ; 
 int FUNC1 (struct ab8500_usb*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ab8500_usb *ab)
{
	u8 reg;
	int ret = 0;

	if (FUNC3(ab->ab8500)) {
		enum ab8500_usb_link_status lsts;

		ret = FUNC2(ab->dev,
				AB8500_USB, AB8500_USB_LINE_STAT_REG, &reg);
		if (ret < 0)
			return ret;
		lsts = (reg >> 3) & 0x0F;
		ret = FUNC0(ab, lsts);
	} else if (FUNC4(ab->ab8500)) {
		enum ab8505_usb_link_status lsts;

		ret = FUNC2(ab->dev,
				AB8500_USB, AB8505_USB_LINE_STAT_REG, &reg);
		if (ret < 0)
			return ret;
		lsts = (reg >> 3) & 0x1F;
		ret = FUNC1(ab, lsts);
	}

	return ret;
}