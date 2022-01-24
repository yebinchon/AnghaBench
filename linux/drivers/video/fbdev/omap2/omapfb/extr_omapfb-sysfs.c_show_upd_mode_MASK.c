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
struct fb_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  enum omapfb_update_mode { ____Placeholder_omapfb_update_mode } omapfb_update_mode ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct fb_info* FUNC0 (struct device*) ; 
 int FUNC1 (struct fb_info*,int*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct fb_info *fbi = FUNC0(dev);
	enum omapfb_update_mode mode;
	int r;

	r = FUNC1(fbi, &mode);

	if (r)
		return r;

	return FUNC2(buf, PAGE_SIZE, "%u\n", (unsigned)mode);
}