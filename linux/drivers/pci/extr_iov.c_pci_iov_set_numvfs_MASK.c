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
struct pci_sriov {int /*<<< orphan*/  stride; scalar_t__ pos; int /*<<< orphan*/  offset; } ;
struct pci_dev {struct pci_sriov* sriov; } ;

/* Variables and functions */
 scalar_t__ PCI_SRIOV_NUM_VF ; 
 scalar_t__ PCI_SRIOV_VF_OFFSET ; 
 scalar_t__ PCI_SRIOV_VF_STRIDE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC2(struct pci_dev *dev, int nr_virtfn)
{
	struct pci_sriov *iov = dev->sriov;

	FUNC1(dev, iov->pos + PCI_SRIOV_NUM_VF, nr_virtfn);
	FUNC0(dev, iov->pos + PCI_SRIOV_VF_OFFSET, &iov->offset);
	FUNC0(dev, iov->pos + PCI_SRIOV_VF_STRIDE, &iov->stride);
}