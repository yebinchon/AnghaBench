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
typedef  int u16 ;
struct most_dci_obj {int reg_addr; int /*<<< orphan*/  usb_device; } ;
struct TYPE_2__ {char* name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int*) ; 
 int /*<<< orphan*/  ro_regs ; 
 int /*<<< orphan*/  rw_regs ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 struct most_dci_obj* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			  char *buf)
{
	const char *name = attr->attr.name;
	struct most_dci_obj *dci_obj = FUNC4(dev);
	u16 val;
	u16 reg_addr;
	int err;

	if (!FUNC3(name, "arb_address"))
		return FUNC2(buf, PAGE_SIZE, "%04x\n", dci_obj->reg_addr);

	if (!FUNC3(name, "arb_value"))
		reg_addr = dci_obj->reg_addr;
	else if (FUNC1(ro_regs, name, &reg_addr) &&
		 FUNC1(rw_regs, name, &reg_addr))
		return -EFAULT;

	err = FUNC0(dci_obj->usb_device, reg_addr, &val);
	if (err < 0)
		return err;

	return FUNC2(buf, PAGE_SIZE, "%04x\n", val);
}