#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct twl4030_bci {int ac_mode; int usb_mode; TYPE_1__* ac; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 struct twl4030_bci* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  modes ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (struct twl4030_bci*,int) ; 
 int FUNC3 (struct twl4030_bci*,int) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t n)
{
	struct twl4030_bci *bci = FUNC0(dev->parent);
	int mode;
	int status;

	mode = FUNC1(modes, buf);
	if (mode < 0)
		return mode;

	if (dev == &bci->ac->dev) {
		if (mode == 2)
			return -EINVAL;
		FUNC2(bci, false);
		bci->ac_mode = mode;
		status = FUNC2(bci, true);
	} else {
		FUNC3(bci, false);
		bci->usb_mode = mode;
		status = FUNC3(bci, true);
	}
	return (status == 0) ? n : status;
}