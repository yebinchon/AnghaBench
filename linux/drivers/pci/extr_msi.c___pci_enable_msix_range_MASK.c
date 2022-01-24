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
struct pci_dev {int /*<<< orphan*/  msix_enabled; } ;
struct msix_entry {int dummy; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,struct msix_entry*,int,struct irq_affinity*,int) ; 
 int FUNC2 (int,int,struct irq_affinity*) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *dev,
				   struct msix_entry *entries, int minvec,
				   int maxvec, struct irq_affinity *affd,
				   int flags)
{
	int rc, nvec = maxvec;

	if (maxvec < minvec)
		return -ERANGE;

	if (FUNC0(dev->msix_enabled))
		return -EINVAL;

	for (;;) {
		if (affd) {
			nvec = FUNC2(minvec, nvec, affd);
			if (nvec < minvec)
				return -ENOSPC;
		}

		rc = FUNC1(dev, entries, nvec, affd, flags);
		if (rc == 0)
			return nvec;

		if (rc < 0)
			return rc;
		if (rc < minvec)
			return -ENOSPC;

		nvec = rc;
	}
}