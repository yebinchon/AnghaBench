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
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {int /*<<< orphan*/  host_band_groups; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC1 (struct device*) ; 
 struct cbaf* FUNC2 (struct usb_interface*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					       struct device_attribute *attr,
					       char *buf)
{
	struct usb_interface *iface = FUNC1(dev);
	struct cbaf *cbaf = FUNC2(iface);

	return FUNC0(buf, PAGE_SIZE, "0x%04x\n", cbaf->host_band_groups);
}