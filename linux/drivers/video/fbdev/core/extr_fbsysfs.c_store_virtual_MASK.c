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
struct fb_var_screeninfo {void* yres_virtual; void* xres_virtual; } ;
struct fb_info {struct fb_var_screeninfo var; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct fb_info*,struct fb_var_screeninfo*) ; 
 struct fb_info* FUNC1 (struct device*) ; 
 void* FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *device,
			     struct device_attribute *attr,
			     const char *buf, size_t count)
{
	struct fb_info *fb_info = FUNC1(device);
	struct fb_var_screeninfo var;
	char *last = NULL;
	int err;

	var = fb_info->var;
	var.xres_virtual = FUNC2(buf, &last, 0);
	last++;
	if (last - buf >= count)
		return -EINVAL;
	var.yres_virtual = FUNC2(last, &last, 0);

	if ((err = FUNC0(fb_info, &var)))
		return err;
	return count;
}