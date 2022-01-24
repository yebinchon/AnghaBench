#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omapfb_device {TYPE_1__* panel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int (* get_bklight_max ) (TYPE_1__*) ;scalar_t__ get_bklight_level; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct omapfb_device* FUNC0 (struct device*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				       struct device_attribute *attr, char *buf)
{
	struct omapfb_device *fbdev = FUNC0(dev);
	int r;

	if (fbdev->panel->get_bklight_level) {
		r = FUNC1(buf, PAGE_SIZE, "%d\n",
			     fbdev->panel->get_bklight_max(fbdev->panel));
	} else
		r = -ENODEV;
	return r;
}