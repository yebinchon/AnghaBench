#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  domain; } ;
struct vmd_dev {int msix_count; TYPE_1__ sysdata; struct pci_dev* dev; int /*<<< orphan*/  cfg_lock; TYPE_2__* irqs; int /*<<< orphan*/  cfgbar; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq_list; int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_NO_THREAD ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 size_t VMD_CFGBAR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct vmd_dev* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct pci_dev*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct vmd_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct vmd_dev*,unsigned long) ; 
 int /*<<< orphan*/  vmd_irq ; 

__attribute__((used)) static int FUNC18(struct pci_dev *dev, const struct pci_device_id *id)
{
	struct vmd_dev *vmd;
	int i, err;

	if (FUNC15(&dev->resource[VMD_CFGBAR]) < (1 << 20))
		return -ENOMEM;

	vmd = FUNC4(&dev->dev, sizeof(*vmd), GFP_KERNEL);
	if (!vmd)
		return -ENOMEM;

	vmd->dev = dev;
	err = FUNC13(dev);
	if (err < 0)
		return err;

	vmd->cfgbar = FUNC14(dev, VMD_CFGBAR, 0);
	if (!vmd->cfgbar)
		return -ENOMEM;

	FUNC12(dev);
	if (FUNC6(&dev->dev, FUNC0(64)) &&
	    FUNC6(&dev->dev, FUNC0(32)))
		return -ENODEV;

	vmd->msix_count = FUNC10(dev);
	if (vmd->msix_count < 0)
		return -ENODEV;

	vmd->msix_count = FUNC8(dev, 1, vmd->msix_count,
					PCI_IRQ_MSIX);
	if (vmd->msix_count < 0)
		return vmd->msix_count;

	vmd->irqs = FUNC3(&dev->dev, vmd->msix_count, sizeof(*vmd->irqs),
				 GFP_KERNEL);
	if (!vmd->irqs)
		return -ENOMEM;

	for (i = 0; i < vmd->msix_count; i++) {
		err = FUNC7(&vmd->irqs[i].srcu);
		if (err)
			return err;

		FUNC1(&vmd->irqs[i].irq_list);
		err = FUNC5(&dev->dev, FUNC9(dev, i),
				       vmd_irq, IRQF_NO_THREAD,
				       "vmd", &vmd->irqs[i]);
		if (err)
			return err;
	}

	FUNC16(&vmd->cfg_lock);
	FUNC11(dev, vmd);
	err = FUNC17(vmd, (unsigned long) id->driver_data);
	if (err)
		return err;

	FUNC2(&vmd->dev->dev, "Bound to PCI domain %04x\n",
		 vmd->sysdata.domain);
	return 0;
}