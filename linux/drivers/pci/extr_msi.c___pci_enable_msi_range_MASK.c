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
struct pci_dev {int /*<<< orphan*/  msi_enabled; scalar_t__ msix_enabled; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int,struct irq_affinity*) ; 
 int FUNC2 (struct pci_dev*,int,struct irq_affinity*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int) ; 
 int FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *dev, int minvec, int maxvec,
				  struct irq_affinity *affd)
{
	int nvec;
	int rc;

	if (!FUNC4(dev, minvec))
		return -EINVAL;

	/* Check whether driver already requested MSI-X IRQs */
	if (dev->msix_enabled) {
		FUNC3(dev, "can't enable MSI (MSI-X already enabled)\n");
		return -EINVAL;
	}

	if (maxvec < minvec)
		return -ERANGE;

	if (FUNC0(dev->msi_enabled))
		return -EINVAL;

	nvec = FUNC5(dev);
	if (nvec < 0)
		return nvec;
	if (nvec < minvec)
		return -ENOSPC;

	if (nvec > maxvec)
		nvec = maxvec;

	for (;;) {
		if (affd) {
			nvec = FUNC1(minvec, nvec, affd);
			if (nvec < minvec)
				return -ENOSPC;
		}

		rc = FUNC2(dev, nvec, affd);
		if (rc == 0)
			return nvec;

		if (rc < 0)
			return rc;
		if (rc < minvec)
			return -ENOSPC;

		nvec = rc;
	}
}