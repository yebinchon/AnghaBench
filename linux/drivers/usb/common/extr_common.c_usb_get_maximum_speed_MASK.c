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
struct device {int dummy; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int USB_SPEED_UNKNOWN ; 
 int FUNC1 (struct device*,char*,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  speed_names ; 

enum usb_device_speed FUNC3(struct device *dev)
{
	const char *maximum_speed;
	int ret;

	ret = FUNC1(dev, "maximum-speed", &maximum_speed);
	if (ret < 0)
		return USB_SPEED_UNKNOWN;

	ret = FUNC2(speed_names, FUNC0(speed_names), maximum_speed);

	return (ret < 0) ? USB_SPEED_UNKNOWN : ret;
}