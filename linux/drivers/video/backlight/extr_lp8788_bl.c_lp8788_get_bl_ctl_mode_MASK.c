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
struct lp8788_bl {int mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum lp8788_bl_ctrl_mode { ____Placeholder_lp8788_bl_ctrl_mode } lp8788_bl_ctrl_mode ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct lp8788_bl* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct lp8788_bl *bl = FUNC0(dev);
	enum lp8788_bl_ctrl_mode mode = bl->mode;
	char *strmode;

	if (FUNC1(mode))
		strmode = "PWM based";
	else if (FUNC2(mode))
		strmode = "Register based";
	else
		strmode = "Invalid mode";

	return FUNC3(buf, PAGE_SIZE, "%s\n", strmode);
}