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
struct omapfb_device {int dummy; } ;
struct omapfb_caps {int ctrl; int plane_color; int wnd_color; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int OMAPFB_PLANE_NUM ; 
 size_t PAGE_SIZE ; 
 struct omapfb_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omapfb_device*,int,struct omapfb_caps*) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				    struct device_attribute *attr, char *buf)
{
	struct omapfb_device *fbdev = FUNC0(dev);
	int plane;
	size_t size;
	struct omapfb_caps caps;

	plane = 0;
	size = 0;
	while (size < PAGE_SIZE && plane < OMAPFB_PLANE_NUM) {
		FUNC1(fbdev, plane, &caps);
		size += FUNC2(&buf[size], PAGE_SIZE - size,
			"plane#%d %#010x %#010x %#010x\n",
			plane, caps.ctrl, caps.plane_color, caps.wnd_color);
		plane++;
	}
	return size;
}