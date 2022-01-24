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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  hotkey_mutex ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			    struct device_attribute *attr,
			    const char *buf, size_t count)
{
	unsigned long t;
	int res;

	if (FUNC4(buf, 0xffffffffUL, &t))
		return -EINVAL;

	if (FUNC2(&hotkey_mutex))
		return -ERESTARTSYS;

	res = FUNC1(t);

#ifdef CONFIG_THINKPAD_ACPI_HOTKEY_POLL
	hotkey_poll_setup(true);
#endif

	FUNC3(&hotkey_mutex);

	FUNC5("hotkey_mask", "set to 0x%08lx\n", t);

	return (res) ? res : count;
}