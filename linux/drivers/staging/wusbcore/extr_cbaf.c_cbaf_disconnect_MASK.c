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
struct device {int /*<<< orphan*/  kobj; } ;
struct usb_interface {struct device dev; } ;
struct cbaf {int /*<<< orphan*/  buffer; int /*<<< orphan*/  usb_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  cbaf_dev_attr_group ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cbaf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct cbaf* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usb_interface *iface)
{
	struct cbaf *cbaf = FUNC3(iface);
	struct device *dev = &iface->dev;
	FUNC2(&dev->kobj, &cbaf_dev_attr_group);
	FUNC6(iface, NULL);
	FUNC5(iface);
	FUNC4(cbaf->usb_dev);
	FUNC0(cbaf->buffer);
	/* paranoia: clean up crypto keys */
	FUNC1(cbaf);
}