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
struct pci_sriov {int total_VFs; int max_VF_buses; int /*<<< orphan*/  stride; int /*<<< orphan*/  offset; } ;
struct pci_dev {struct pci_sriov* sriov; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int FUNC1 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *dev)
{
	struct pci_sriov *iov = dev->sriov;
	int nr_virtfn, busnr, rc = 0;

	for (nr_virtfn = iov->total_VFs; nr_virtfn; nr_virtfn--) {
		FUNC0(dev, nr_virtfn);
		if (!iov->offset || (nr_virtfn > 1 && !iov->stride)) {
			rc = -EIO;
			goto out;
		}

		busnr = FUNC1(dev, nr_virtfn - 1);
		if (busnr > iov->max_VF_buses)
			iov->max_VF_buses = busnr;
	}

out:
	FUNC0(dev, 0);
	return rc;
}