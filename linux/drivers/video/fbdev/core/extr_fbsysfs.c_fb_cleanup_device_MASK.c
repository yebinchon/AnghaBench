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
struct fb_info {int class_flag; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int FB_SYSFS_FLAG_ATTR ; 
 int /*<<< orphan*/ * device_attrs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct fb_info *fb_info)
{
	unsigned int i;

	if (fb_info->class_flag & FB_SYSFS_FLAG_ATTR) {
		for (i = 0; i < FUNC0(device_attrs); i++)
			FUNC1(fb_info->dev, &device_attrs[i]);

		fb_info->class_flag &= ~FB_SYSFS_FLAG_ATTR;
	}
}