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
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct most_dci_obj {int /*<<< orphan*/  reg_addr; struct usb_device* usb_device; } ;
struct TYPE_2__ {char* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rw_regs ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 struct most_dci_obj* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	u16 val;
	u16 reg_addr;
	const char *name = attr->attr.name;
	struct most_dci_obj *dci_obj = FUNC5(dev);
	struct usb_device *usb_dev = dci_obj->usb_device;
	int err = FUNC2(buf, 16, &val);

	if (err)
		return err;

	if (!FUNC4(name, "arb_address")) {
		dci_obj->reg_addr = val;
		return count;
	}

	if (!FUNC4(name, "arb_value"))
		err = FUNC0(usb_dev, dci_obj->reg_addr, val);
	else if (!FUNC4(name, "sync_ep"))
		err = FUNC3(usb_dev, val);
	else if (!FUNC1(rw_regs, name, &reg_addr))
		err = FUNC0(usb_dev, reg_addr, val);
	else
		return -EFAULT;

	if (err < 0)
		return err;

	return count;
}