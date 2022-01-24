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
struct usb_hcd {int dummy; } ;
struct hc_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct usb_hcd* FUNC0 (struct hc_driver const*,struct device*,struct device*,char const*,struct usb_hcd*) ; 

struct usb_hcd *FUNC1(const struct hc_driver *driver,
		struct device *dev, const char *bus_name,
		struct usb_hcd *primary_hcd)
{
	return FUNC0(driver, dev, dev, bus_name, primary_hcd);
}