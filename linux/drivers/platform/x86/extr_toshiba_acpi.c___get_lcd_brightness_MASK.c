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
struct toshiba_acpi_dev {scalar_t__ tr_backlight_supported; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCI_LCD_BRIGHTNESS ; 
 int HCI_LCD_BRIGHTNESS_SHIFT ; 
 int TOS_FAILURE ; 
 int TOS_NOT_SUPPORTED ; 
 int TOS_SUCCESS ; 
 int FUNC0 (struct toshiba_acpi_dev*,int*) ; 
 int FUNC1 (struct toshiba_acpi_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct toshiba_acpi_dev *dev)
{
	int brightness = 0;
	u32 result;
	u32 value;

	if (dev->tr_backlight_supported) {
		int ret = FUNC0(dev, &value);

		if (ret)
			return ret;
		if (value)
			return 0;
		brightness++;
	}

	result = FUNC1(dev, HCI_LCD_BRIGHTNESS, &value);
	if (result == TOS_FAILURE)
		FUNC2("ACPI call to get LCD Brightness failed\n");
	else if (result == TOS_NOT_SUPPORTED)
		return -ENODEV;

	return result == TOS_SUCCESS ?
			brightness + (value >> HCI_LCD_BRIGHTNESS_SHIFT) :
			-EIO;
}