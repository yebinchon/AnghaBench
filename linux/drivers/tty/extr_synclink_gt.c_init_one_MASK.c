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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct pci_dev*) ; 
 int /*<<< orphan*/  slgt_device_count ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev,
			      const struct pci_device_id *ent)
{
	if (FUNC1(dev)) {
		FUNC3("error enabling pci device %p\n", dev);
		return -EIO;
	}
	FUNC2(dev);
	FUNC0(slgt_device_count, dev);
	return 0;
}