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
struct usb_sevsegdev {size_t textlength; int /*<<< orphan*/  text; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC2 (char const*,size_t) ; 
 struct usb_interface* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_sevsegdev*,int /*<<< orphan*/ ) ; 
 struct usb_sevsegdev* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct usb_interface *intf = FUNC3(dev);
	struct usb_sevsegdev *mydev = FUNC5(intf);
	size_t end = FUNC2(buf, count);

	if (end > sizeof(mydev->text))
		return -EINVAL;

	FUNC1(mydev->text, 0, sizeof(mydev->text));
	mydev->textlength = end;

	if (end > 0)
		FUNC0(mydev->text, buf, end);

	FUNC4(mydev, GFP_KERNEL);
	return count;
}