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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct pch_dev {scalar_t__ mem_base; int /*<<< orphan*/  mem_size; TYPE_2__* regs; int /*<<< orphan*/  ptp_clock; int /*<<< orphan*/  register_lock; struct pci_dev* pdev; int /*<<< orphan*/  irq; int /*<<< orphan*/  caps; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_5__ {int /*<<< orphan*/  event; int /*<<< orphan*/  trgt_hi; int /*<<< orphan*/  trgt_lo; int /*<<< orphan*/  addend; } ;
struct TYPE_4__ {int /*<<< orphan*/  station; } ;

/* Variables and functions */
 int DEFAULT_ADDEND ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IO_MEM_BAR ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int PCH_TSE_TTIPEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isr ; 
 int /*<<< orphan*/  FUNC6 (struct pch_dev*) ; 
 struct pch_dev* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pch_dev*) ; 
 TYPE_1__ pch_param ; 
 int /*<<< orphan*/  FUNC9 (struct pch_dev*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct pch_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptp_pch_caps ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pch_dev*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static s32
FUNC25(struct pci_dev *pdev, const struct pci_device_id *id)
{
	s32 ret;
	unsigned long flags;
	struct pch_dev *chip;

	chip = FUNC7(sizeof(struct pch_dev), GFP_KERNEL);
	if (chip == NULL)
		return -ENOMEM;

	/* enable the 1588 pci device */
	ret = FUNC12(pdev);
	if (ret != 0) {
		FUNC2(&pdev->dev, "could not enable the pci device\n");
		goto err_pci_en;
	}

	chip->mem_base = FUNC14(pdev, IO_MEM_BAR);
	if (!chip->mem_base) {
		FUNC2(&pdev->dev, "could not locate IO memory address\n");
		ret = -ENODEV;
		goto err_pci_start;
	}

	/* retrieve the available length of the IO memory space */
	chip->mem_size = FUNC13(pdev, IO_MEM_BAR);

	/* allocate the memory for the device registers */
	if (!FUNC20(chip->mem_base, chip->mem_size, "1588_regs")) {
		FUNC2(&pdev->dev,
			"could not allocate register memory space\n");
		ret = -EBUSY;
		goto err_req_mem_region;
	}

	/* get the virtual address to the 1588 registers */
	chip->regs = FUNC3(chip->mem_base, chip->mem_size);

	if (!chip->regs) {
		FUNC2(&pdev->dev, "Could not get virtual address\n");
		ret = -ENOMEM;
		goto err_ioremap;
	}

	chip->caps = ptp_pch_caps;
	chip->ptp_clock = FUNC16(&chip->caps, &pdev->dev);
	if (FUNC0(chip->ptp_clock)) {
		ret = FUNC1(chip->ptp_clock);
		goto err_ptp_clock_reg;
	}

	FUNC21(&chip->register_lock);

	ret = FUNC19(pdev->irq, &isr, IRQF_SHARED, KBUILD_MODNAME, chip);
	if (ret != 0) {
		FUNC2(&pdev->dev, "failed to get irq %d\n", pdev->irq);
		goto err_req_irq;
	}

	/* indicate success */
	chip->irq = pdev->irq;
	chip->pdev = pdev;
	FUNC15(pdev, chip);

	FUNC22(&chip->register_lock, flags);
	/* reset the ieee1588 h/w */
	FUNC9(chip);

	FUNC5(DEFAULT_ADDEND, &chip->regs->addend);
	FUNC5(1, &chip->regs->trgt_lo);
	FUNC5(0, &chip->regs->trgt_hi);
	FUNC5(PCH_TSE_TTIPEND, &chip->regs->event);

	FUNC8(chip);

	if (FUNC24(pch_param.station, "00:00:00:00:00:00") != 0) {
		if (FUNC10(pch_param.station, pdev) != 0) {
			FUNC2(&pdev->dev,
			"Invalid station address parameter\n"
			"Module loaded but station address not set correctly\n"
			);
		}
	}
	FUNC23(&chip->register_lock, flags);
	return 0;

err_req_irq:
	FUNC17(chip->ptp_clock);
err_ptp_clock_reg:
	FUNC4(chip->regs);
	chip->regs = NULL;

err_ioremap:
	FUNC18(chip->mem_base, chip->mem_size);

err_req_mem_region:
	chip->mem_base = 0;

err_pci_start:
	FUNC11(pdev);

err_pci_en:
	FUNC6(chip);
	FUNC2(&pdev->dev, "probe failed(ret=0x%x)\n", ret);

	return ret;
}