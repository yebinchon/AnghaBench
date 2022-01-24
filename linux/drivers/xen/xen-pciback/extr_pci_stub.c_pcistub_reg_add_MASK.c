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
struct pcistub_device {struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct config_field {unsigned int offset; unsigned int size; unsigned int mask; int /*<<< orphan*/  clean; int /*<<< orphan*/ * release; int /*<<< orphan*/ * reset; int /*<<< orphan*/ * init; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct config_field*) ; 
 struct config_field* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct pcistub_device* FUNC2 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcistub_device*) ; 
 int /*<<< orphan*/  xen_pcibk_config_field_free ; 
 int FUNC4 (struct pci_dev*,struct config_field*) ; 

__attribute__((used)) static int FUNC5(int domain, int bus, int slot, int func,
			   unsigned int reg, unsigned int size,
			   unsigned int mask)
{
	int err = 0;
	struct pcistub_device *psdev;
	struct pci_dev *dev;
	struct config_field *field;

	if (reg > 0xfff || (size < 4 && (mask >> (size * 8))))
		return -EINVAL;

	psdev = FUNC2(domain, bus, slot, func);
	if (!psdev) {
		err = -ENODEV;
		goto out;
	}
	dev = psdev->dev;

	field = FUNC1(sizeof(*field), GFP_KERNEL);
	if (!field) {
		err = -ENOMEM;
		goto out;
	}

	field->offset = reg;
	field->size = size;
	field->mask = mask;
	field->init = NULL;
	field->reset = NULL;
	field->release = NULL;
	field->clean = xen_pcibk_config_field_free;

	err = FUNC4(dev, field);
	if (err)
		FUNC0(field);
out:
	if (psdev)
		FUNC3(psdev);
	return err;
}