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
struct sm501fb_info {scalar_t__ regs; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;

/* Variables and functions */
 size_t EINVAL ; 
 int HEAD_CRT ; 
 int HEAD_PANEL ; 
 scalar_t__ SM501_DC_CRT_CONTROL ; 
 unsigned long SM501_DC_CRT_CONTROL_ENABLE ; 
 unsigned long SM501_DC_CRT_CONTROL_SEL ; 
 unsigned long SM501_DC_CRT_CONTROL_TE ; 
 struct sm501fb_info* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sm501fb_info*) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t len)
{
	struct sm501fb_info *info = FUNC0(dev);
	enum sm501_controller head;
	unsigned long ctrl;

	if (len < 1)
		return -EINVAL;

	if (FUNC5(buf, "crt", 3) == 0)
		head = HEAD_CRT;
	else if (FUNC5(buf, "panel", 5) == 0)
		head = HEAD_PANEL;
	else
		return -EINVAL;

	FUNC1(dev, "setting crt source to head %d\n", head);

	ctrl = FUNC3(info->regs + SM501_DC_CRT_CONTROL);

	if (head == HEAD_CRT) {
		ctrl |= SM501_DC_CRT_CONTROL_SEL;
		ctrl |= SM501_DC_CRT_CONTROL_ENABLE;
		ctrl |= SM501_DC_CRT_CONTROL_TE;
	} else {
		ctrl &= ~SM501_DC_CRT_CONTROL_SEL;
		ctrl &= ~SM501_DC_CRT_CONTROL_ENABLE;
		ctrl &= ~SM501_DC_CRT_CONTROL_TE;
	}

	FUNC4(ctrl, info->regs + SM501_DC_CRT_CONTROL);
	FUNC2(info);

	return len;
}