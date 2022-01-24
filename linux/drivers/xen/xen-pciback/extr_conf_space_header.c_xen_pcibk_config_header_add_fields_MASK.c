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
struct pci_dev {int hdr_type; } ;

/* Variables and functions */
 int EINVAL ; 
#define  PCI_HEADER_TYPE_BRIDGE 129 
#define  PCI_HEADER_TYPE_NORMAL 128 
 int /*<<< orphan*/  header_0 ; 
 int /*<<< orphan*/  header_1 ; 
 int /*<<< orphan*/  header_common ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_dev *dev)
{
	int err;

	err = FUNC2(dev, header_common);
	if (err)
		goto out;

	switch (dev->hdr_type) {
	case PCI_HEADER_TYPE_NORMAL:
		err = FUNC2(dev, header_0);
		break;

	case PCI_HEADER_TYPE_BRIDGE:
		err = FUNC2(dev, header_1);
		break;

	default:
		err = -EINVAL;
		FUNC1("%s: Unsupported header type %d!\n",
		       FUNC0(dev), dev->hdr_type);
		break;
	}

out:
	return err;
}