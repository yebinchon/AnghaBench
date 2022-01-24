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
struct pci_dev {int dummy; } ;
struct MPT3SAS_ADAPTER {int dma_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct MPT3SAS_ADAPTER *ioc,
				      struct pci_dev *pdev)
{
	if (FUNC1(pdev, FUNC0(ioc->dma_mask))) {
		if (FUNC1(pdev, FUNC0(32)))
			return -ENODEV;
	}
	return 0;
}