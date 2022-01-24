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
struct pqi_ctrl_info {int num_msix_vectors_enabled; int /*<<< orphan*/  num_msix_vectors_initialized; int /*<<< orphan*/ * queue_groups; int /*<<< orphan*/  event_irq; struct pci_dev* pci_dev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME_SHORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pqi_irq_handler ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pqi_ctrl_info *ctrl_info)
{
	struct pci_dev *pci_dev = ctrl_info->pci_dev;
	int i;
	int rc;

	ctrl_info->event_irq = FUNC1(pci_dev, 0);

	for (i = 0; i < ctrl_info->num_msix_vectors_enabled; i++) {
		rc = FUNC2(FUNC1(pci_dev, i), pqi_irq_handler, 0,
			DRIVER_NAME_SHORT, &ctrl_info->queue_groups[i]);
		if (rc) {
			FUNC0(&pci_dev->dev,
				"irq %u init failed with error %d\n",
				FUNC1(pci_dev, i), rc);
			return rc;
		}
		ctrl_info->num_msix_vectors_initialized++;
	}

	return 0;
}