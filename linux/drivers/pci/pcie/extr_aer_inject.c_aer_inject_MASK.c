#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pcie_device {int /*<<< orphan*/  irq; struct pci_dev* port; } ;
struct pci_dev {int aer_cap; unsigned int devfn; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct aer_error_inj {int bus; int cor_status; int uncor_status; int /*<<< orphan*/  header_log3; int /*<<< orphan*/  header_log2; int /*<<< orphan*/  header_log1; int /*<<< orphan*/  header_log0; int /*<<< orphan*/  domain; int /*<<< orphan*/  fn; int /*<<< orphan*/  dev; } ;
struct aer_error {int uncor_status; int cor_status; int root_status; int source_id; int /*<<< orphan*/  list; int /*<<< orphan*/  header_log3; int /*<<< orphan*/  header_log2; int /*<<< orphan*/  header_log1; int /*<<< orphan*/  header_log0; } ;
struct TYPE_3__ {int number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCIE_PORT_SERVICE_AER ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_ERR_COR_MASK ; 
 int PCI_ERR_ROOT_COR_RCV ; 
 int PCI_ERR_ROOT_FATAL_RCV ; 
 int PCI_ERR_ROOT_FIRST_FATAL ; 
 int PCI_ERR_ROOT_MULTI_COR_RCV ; 
 int PCI_ERR_ROOT_MULTI_UNCOR_RCV ; 
 int PCI_ERR_ROOT_NONFATAL_RCV ; 
 int PCI_ERR_ROOT_UNCOR_RCV ; 
 scalar_t__ PCI_ERR_UNCOR_MASK ; 
 scalar_t__ PCI_ERR_UNCOR_SEVER ; 
 struct aer_error* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aer_error*,int /*<<< orphan*/ ,int,unsigned int,int) ; 
 scalar_t__ aer_mask_override ; 
 int /*<<< orphan*/  einjected ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcie_device*) ; 
 int /*<<< orphan*/  inject_lock ; 
 int /*<<< orphan*/  FUNC5 (struct aer_error*) ; 
 struct aer_error* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,char*) ; 
 struct pci_dev* FUNC14 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,scalar_t__,int) ; 
 struct pci_dev* FUNC20 (struct pci_dev*) ; 
 struct device* FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pcie_device* FUNC24 (struct device*) ; 

__attribute__((used)) static int FUNC25(struct aer_error_inj *einj)
{
	struct aer_error *err, *rperr;
	struct aer_error *err_alloc = NULL, *rperr_alloc = NULL;
	struct pci_dev *dev, *rpdev;
	struct pcie_device *edev;
	struct device *device;
	unsigned long flags;
	unsigned int devfn = FUNC0(einj->dev, einj->fn);
	int pos_cap_err, rp_pos_cap_err;
	u32 sever, cor_mask, uncor_mask, cor_mask_orig = 0, uncor_mask_orig = 0;
	int ret = 0;

	dev = FUNC14(einj->domain, einj->bus, devfn);
	if (!dev)
		return -ENODEV;
	rpdev = FUNC20(dev);
	if (!rpdev) {
		FUNC13(dev, "Root port not found\n");
		ret = -ENODEV;
		goto out_put;
	}

	pos_cap_err = dev->aer_cap;
	if (!pos_cap_err) {
		FUNC13(dev, "Device doesn't support AER\n");
		ret = -EPROTONOSUPPORT;
		goto out_put;
	}
	FUNC17(dev, pos_cap_err + PCI_ERR_UNCOR_SEVER, &sever);
	FUNC17(dev, pos_cap_err + PCI_ERR_COR_MASK, &cor_mask);
	FUNC17(dev, pos_cap_err + PCI_ERR_UNCOR_MASK,
			      &uncor_mask);

	rp_pos_cap_err = rpdev->aer_cap;
	if (!rp_pos_cap_err) {
		FUNC13(rpdev, "Root port doesn't support AER\n");
		ret = -EPROTONOSUPPORT;
		goto out_put;
	}

	err_alloc =  FUNC6(sizeof(struct aer_error), GFP_KERNEL);
	if (!err_alloc) {
		ret = -ENOMEM;
		goto out_put;
	}
	rperr_alloc =  FUNC6(sizeof(struct aer_error), GFP_KERNEL);
	if (!rperr_alloc) {
		ret = -ENOMEM;
		goto out_put;
	}

	if (aer_mask_override) {
		cor_mask_orig = cor_mask;
		cor_mask &= !(einj->cor_status);
		FUNC19(dev, pos_cap_err + PCI_ERR_COR_MASK,
				       cor_mask);

		uncor_mask_orig = uncor_mask;
		uncor_mask &= !(einj->uncor_status);
		FUNC19(dev, pos_cap_err + PCI_ERR_UNCOR_MASK,
				       uncor_mask);
	}

	FUNC22(&inject_lock, flags);

	err = FUNC1(dev);
	if (!err) {
		err = err_alloc;
		err_alloc = NULL;
		FUNC2(err, einj->domain, einj->bus, devfn,
			       pos_cap_err);
		FUNC7(&err->list, &einjected);
	}
	err->uncor_status |= einj->uncor_status;
	err->cor_status |= einj->cor_status;
	err->header_log0 = einj->header_log0;
	err->header_log1 = einj->header_log1;
	err->header_log2 = einj->header_log2;
	err->header_log3 = einj->header_log3;

	if (!aer_mask_override && einj->cor_status &&
	    !(einj->cor_status & ~cor_mask)) {
		ret = -EINVAL;
		FUNC18(dev, "The correctable error(s) is masked by device\n");
		FUNC23(&inject_lock, flags);
		goto out_put;
	}
	if (!aer_mask_override && einj->uncor_status &&
	    !(einj->uncor_status & ~uncor_mask)) {
		ret = -EINVAL;
		FUNC18(dev, "The uncorrectable error(s) is masked by device\n");
		FUNC23(&inject_lock, flags);
		goto out_put;
	}

	rperr = FUNC1(rpdev);
	if (!rperr) {
		rperr = rperr_alloc;
		rperr_alloc = NULL;
		FUNC2(rperr, FUNC12(rpdev->bus),
			       rpdev->bus->number, rpdev->devfn,
			       rp_pos_cap_err);
		FUNC7(&rperr->list, &einjected);
	}
	if (einj->cor_status) {
		if (rperr->root_status & PCI_ERR_ROOT_COR_RCV)
			rperr->root_status |= PCI_ERR_ROOT_MULTI_COR_RCV;
		else
			rperr->root_status |= PCI_ERR_ROOT_COR_RCV;
		rperr->source_id &= 0xffff0000;
		rperr->source_id |= (einj->bus << 8) | devfn;
	}
	if (einj->uncor_status) {
		if (rperr->root_status & PCI_ERR_ROOT_UNCOR_RCV)
			rperr->root_status |= PCI_ERR_ROOT_MULTI_UNCOR_RCV;
		if (sever & einj->uncor_status) {
			rperr->root_status |= PCI_ERR_ROOT_FATAL_RCV;
			if (!(rperr->root_status & PCI_ERR_ROOT_UNCOR_RCV))
				rperr->root_status |= PCI_ERR_ROOT_FIRST_FATAL;
		} else
			rperr->root_status |= PCI_ERR_ROOT_NONFATAL_RCV;
		rperr->root_status |= PCI_ERR_ROOT_UNCOR_RCV;
		rperr->source_id &= 0x0000ffff;
		rperr->source_id |= ((einj->bus << 8) | devfn) << 16;
	}
	FUNC23(&inject_lock, flags);

	if (aer_mask_override) {
		FUNC19(dev, pos_cap_err + PCI_ERR_COR_MASK,
				       cor_mask_orig);
		FUNC19(dev, pos_cap_err + PCI_ERR_UNCOR_MASK,
				       uncor_mask_orig);
	}

	ret = FUNC10(dev->bus);
	if (ret)
		goto out_put;
	ret = FUNC10(rpdev->bus);
	if (ret)
		goto out_put;

	device = FUNC21(rpdev, PCIE_PORT_SERVICE_AER);
	if (device) {
		edev = FUNC24(device);
		if (!FUNC4(edev)) {
			FUNC18(edev->port, "AER service is not initialized\n");
			ret = -EPROTONOSUPPORT;
			goto out_put;
		}
		FUNC15(edev->port, "Injecting errors %08x/%08x into device %s\n",
			 einj->cor_status, einj->uncor_status, FUNC16(dev));
		FUNC8();
		FUNC3(edev->irq);
		FUNC9();
	} else {
		FUNC13(rpdev, "AER device not found\n");
		ret = -ENODEV;
	}
out_put:
	FUNC5(err_alloc);
	FUNC5(rperr_alloc);
	FUNC11(dev);
	return ret;
}