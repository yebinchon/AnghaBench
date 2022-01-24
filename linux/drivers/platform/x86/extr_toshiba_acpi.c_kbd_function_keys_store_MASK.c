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
struct toshiba_acpi_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 struct toshiba_acpi_dev* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct toshiba_acpi_dev*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				       struct device_attribute *attr,
				       const char *buf, size_t count)
{
	struct toshiba_acpi_dev *toshiba = FUNC0(dev);
	int mode;
	int ret;

	ret = FUNC1(buf, 0, &mode);
	if (ret)
		return ret;
	/*
	 * Check for the function keys mode where:
	 * 0 - Normal operation (F{1-12} as usual and hotkeys via FN-F{1-12})
	 * 1 - Special functions (Opposite of the above setting)
	 */
	if (mode != 0 && mode != 1)
		return -EINVAL;

	ret = FUNC3(toshiba, mode);
	if (ret)
		return ret;

	FUNC2("Reboot for changes to KBD Function Keys to take effect");

	return count;
}