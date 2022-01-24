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
struct toshiba_acpi_dev {scalar_t__ tr_backlight_supported; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCI_LCD_BRIGHTNESS ; 
 int HCI_LCD_BRIGHTNESS_SHIFT ; 
 scalar_t__ TOS_FAILURE ; 
 scalar_t__ TOS_NOT_SUPPORTED ; 
 scalar_t__ TOS_SUCCESS ; 
 scalar_t__ FUNC0 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct toshiba_acpi_dev*,int) ; 

__attribute__((used)) static int FUNC3(struct toshiba_acpi_dev *dev, int value)
{
	u32 result;

	if (dev->tr_backlight_supported) {
		int ret = FUNC2(dev, !value);

		if (ret)
			return ret;
		if (value)
			value--;
	}

	value = value << HCI_LCD_BRIGHTNESS_SHIFT;
	result = FUNC0(dev, HCI_LCD_BRIGHTNESS, value);
	if (result == TOS_FAILURE)
		FUNC1("ACPI call to set LCD Brightness failed\n");
	else if (result == TOS_NOT_SUPPORTED)
		return -ENODEV;

	return result == TOS_SUCCESS ? 0 : -EIO;
}