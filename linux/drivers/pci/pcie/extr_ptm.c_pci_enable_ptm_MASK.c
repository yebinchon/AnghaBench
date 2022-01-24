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
typedef  int u8 ;
typedef  int u32 ;
struct pci_dev {int ptm_enabled; int ptm_granularity; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI_EXP_TYPE_ENDPOINT ; 
 scalar_t__ PCI_EXP_TYPE_RC_END ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_PTM ; 
 scalar_t__ PCI_PTM_CAP ; 
 int PCI_PTM_CAP_REQ ; 
 scalar_t__ PCI_PTM_CTRL ; 
 int PCI_PTM_CTRL_ENABLE ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,scalar_t__,int*) ; 
 struct pci_dev* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int) ; 

int FUNC7(struct pci_dev *dev, u8 *granularity)
{
	int pos;
	u32 cap, ctrl;
	struct pci_dev *ups;

	if (!FUNC1(dev))
		return -EINVAL;

	pos = FUNC0(dev, PCI_EXT_CAP_ID_PTM);
	if (!pos)
		return -EINVAL;

	FUNC4(dev, pos + PCI_PTM_CAP, &cap);
	if (!(cap & PCI_PTM_CAP_REQ))
		return -EINVAL;

	/*
	 * For a PCIe Endpoint, PTM is only useful if the endpoint can
	 * issue PTM requests to upstream devices that have PTM enabled.
	 *
	 * For Root Complex Integrated Endpoints, there is no upstream
	 * device, so there must be some implementation-specific way to
	 * associate the endpoint with a time source.
	 */
	if (FUNC2(dev) == PCI_EXP_TYPE_ENDPOINT) {
		ups = FUNC5(dev);
		if (!ups || !ups->ptm_enabled)
			return -EINVAL;

		dev->ptm_granularity = ups->ptm_granularity;
	} else if (FUNC2(dev) == PCI_EXP_TYPE_RC_END) {
		dev->ptm_granularity = 0;
	} else
		return -EINVAL;

	ctrl = PCI_PTM_CTRL_ENABLE;
	ctrl |= dev->ptm_granularity << 8;
	FUNC6(dev, pos + PCI_PTM_CTRL, ctrl);
	dev->ptm_enabled = 1;

	FUNC3(dev);

	if (granularity)
		*granularity = dev->ptm_granularity;
	return 0;
}