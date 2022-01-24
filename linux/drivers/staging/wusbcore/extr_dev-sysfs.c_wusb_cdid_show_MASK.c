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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct wusb_dev {TYPE_1__ cdid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct wusb_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wusb_dev*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	ssize_t result;
	struct wusb_dev *wusb_dev;

	wusb_dev = FUNC2(FUNC1(dev));
	if (wusb_dev == NULL)
		return -ENODEV;
	result = FUNC0(buf, "%16ph\n", wusb_dev->cdid.data);
	FUNC3(wusb_dev);
	return result;
}