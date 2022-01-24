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
struct vmd_dev {int msix_count; } ;
struct pci_dev {int /*<<< orphan*/  bus; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  msi_alloc_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC1 (struct device*) ; 
 struct vmd_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct irq_domain *domain, struct device *dev,
			   int nvec, msi_alloc_info_t *arg)
{
	struct pci_dev *pdev = FUNC1(dev);
	struct vmd_dev *vmd = FUNC2(pdev->bus);

	if (nvec > vmd->msix_count)
		return vmd->msix_count;

	FUNC0(arg, 0, sizeof(*arg));
	return 0;
}