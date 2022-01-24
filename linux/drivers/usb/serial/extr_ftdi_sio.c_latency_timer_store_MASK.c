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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int dummy; } ;
struct ftdi_private {int /*<<< orphan*/  latency; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EIO ; 
 scalar_t__ FUNC0 (char const*,int,int /*<<< orphan*/ *) ; 
 struct usb_serial_port* FUNC1 (struct device*) ; 
 struct ftdi_private* FUNC2 (struct usb_serial_port*) ; 
 int FUNC3 (struct usb_serial_port*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr,
				   const char *valbuf, size_t count)
{
	struct usb_serial_port *port = FUNC1(dev);
	struct ftdi_private *priv = FUNC2(port);
	u8 v;
	int rv;

	if (FUNC0(valbuf, 10, &v))
		return -EINVAL;

	priv->latency = v;
	rv = FUNC3(port);
	if (rv < 0)
		return -EIO;
	return count;
}