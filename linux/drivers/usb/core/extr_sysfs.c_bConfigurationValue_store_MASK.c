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
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int FUNC0 (char const*,char*,int*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 int FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					 struct device_attribute *attr,
					 const char *buf, size_t count)
{
	struct usb_device	*udev = FUNC1(dev);
	int			config, value, rc;

	if (FUNC0(buf, "%d", &config) != 1 || config < -1 || config > 255)
		return -EINVAL;
	rc = FUNC2(udev);
	if (rc < 0)
		return -EINTR;
	value = FUNC3(udev, config);
	FUNC4(udev);
	return (value < 0) ? value : count;
}