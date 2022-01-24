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
struct usb_host_config {char* string; } ;
struct usb_device {struct usb_host_config* actconfig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (char*,char*,char*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct usb_device *udev;
	struct usb_host_config *actconfig;
	ssize_t rc;

	udev = FUNC1(dev);
	rc = FUNC2(udev);
	if (rc < 0)
		return -EINTR;
	actconfig = udev->actconfig;
	if (actconfig && actconfig->string)
		rc = FUNC0(buf, "%s\n", actconfig->string);
	FUNC3(udev);
	return rc;
}