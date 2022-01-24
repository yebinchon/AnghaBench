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
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct kp2000_device {int /*<<< orphan*/  card_num; int /*<<< orphan*/  sem; TYPE_2__* pdev; int /*<<< orphan*/ * regs_bar_base; int /*<<< orphan*/ * dma_bar_base; } ;
struct TYPE_5__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BAR ; 
 int /*<<< orphan*/  FUNC0 (struct kp2000_device*) ; 
 int /*<<< orphan*/  REG_BAR ; 
 int /*<<< orphan*/  card_num_ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kp2000_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kp2000_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kp2000_device*) ; 
 int /*<<< orphan*/  kp_attr_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 struct kp2000_device* FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct pci_dev *pdev)
{
	struct kp2000_device *pcard = FUNC11(pdev);

	if (!pcard)
		return;

	FUNC7(&pcard->sem);
	FUNC5(pcard);
	FUNC6(FUNC0(pcard));
	FUNC14(&pdev->dev.kobj, kp_attr_list);
	FUNC1(pcard->pdev->irq, pcard);
	FUNC10(pcard->pdev);
	if (pcard->dma_bar_base) {
		FUNC3(pcard->dma_bar_base);
		FUNC12(pdev, DMA_BAR);
		pcard->dma_bar_base = NULL;
	}
	if (pcard->regs_bar_base) {
		FUNC3(pcard->regs_bar_base);
		FUNC12(pdev, REG_BAR);
		pcard->regs_bar_base = NULL;
	}
	FUNC9(pcard->pdev);
	FUNC13(pdev, NULL);
	FUNC8(&pcard->sem);
	FUNC2(&card_num_ida, pcard->card_num);
	FUNC4(pcard);
}