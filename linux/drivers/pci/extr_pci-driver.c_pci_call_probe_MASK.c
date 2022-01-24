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
struct pci_driver {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int is_probed; int /*<<< orphan*/  dev; } ;
struct drv_dev_and_id {struct pci_device_id const* member_2; struct pci_dev* member_1; struct pci_driver* member_0; } ;

/* Variables and functions */
 int MAX_NUMNODES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct drv_dev_and_id*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int nr_cpu_ids ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 
 int FUNC8 (int,int (*) (struct drv_dev_and_id*),struct drv_dev_and_id*) ; 

__attribute__((used)) static int FUNC9(struct pci_driver *drv, struct pci_dev *dev,
			  const struct pci_device_id *id)
{
	int error, node, cpu;
	struct drv_dev_and_id ddi = { drv, dev, id };

	/*
	 * Execute driver initialization on node where the device is
	 * attached.  This way the driver likely allocates its local memory
	 * on the right node.
	 */
	node = FUNC4(&dev->dev);
	dev->is_probed = 1;

	FUNC0();

	/*
	 * Prevent nesting work_on_cpu() for the case where a Virtual Function
	 * device is probed from work_on_cpu() of the Physical device.
	 */
	if (node < 0 || node >= MAX_NUMNODES || !FUNC6(node) ||
	    FUNC7(dev))
		cpu = nr_cpu_ids;
	else
		cpu = FUNC2(FUNC3(node), cpu_online_mask);

	if (cpu < nr_cpu_ids)
		error = FUNC8(cpu, local_pci_probe, &ddi);
	else
		error = FUNC5(&ddi);

	dev->is_probed = 0;
	FUNC1();
	return error;
}