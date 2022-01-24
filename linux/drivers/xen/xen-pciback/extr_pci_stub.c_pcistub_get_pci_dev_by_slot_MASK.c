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
struct xen_pcibk_device {int dummy; } ;
struct pcistub_device {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 struct pcistub_device* FUNC0 (int,int,int,int) ; 
 struct pci_dev* FUNC1 (struct xen_pcibk_device*,struct pcistub_device*) ; 
 int /*<<< orphan*/  pcistub_devices_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct pci_dev *FUNC4(struct xen_pcibk_device *pdev,
					    int domain, int bus,
					    int slot, int func)
{
	struct pcistub_device *psdev;
	struct pci_dev *found_dev = NULL;
	unsigned long flags;

	FUNC2(&pcistub_devices_lock, flags);

	psdev = FUNC0(domain, bus, slot, func);
	if (psdev)
		found_dev = FUNC1(pdev, psdev);

	FUNC3(&pcistub_devices_lock, flags);
	return found_dev;
}