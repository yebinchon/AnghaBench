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
struct usb_port {int connect_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  USB_PORT_CONNECT_TYPE_HARD_WIRED 130 
#define  USB_PORT_CONNECT_TYPE_HOT_PLUG 129 
#define  USB_PORT_NOT_USED 128 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 struct usb_port* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct usb_port *port_dev = FUNC1(dev);
	char *result;

	switch (port_dev->connect_type) {
	case USB_PORT_CONNECT_TYPE_HOT_PLUG:
		result = "hotplug";
		break;
	case USB_PORT_CONNECT_TYPE_HARD_WIRED:
		result = "hardwired";
		break;
	case USB_PORT_NOT_USED:
		result = "not used";
		break;
	default:
		result = "unknown";
		break;
	}

	return FUNC0(buf, "%s\n", result);
}