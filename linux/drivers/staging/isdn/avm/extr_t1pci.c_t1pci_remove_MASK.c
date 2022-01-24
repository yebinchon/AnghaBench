#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  capi_ctrl; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_8__ {int /*<<< orphan*/  dma; int /*<<< orphan*/  port; int /*<<< orphan*/  mbase; int /*<<< orphan*/  irq; TYPE_1__* ctrlinfo; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  AVMB1_PORTLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	avmcard *card = FUNC6(pdev);
	avmctrl_info *cinfo = card->ctrlinfo;

	FUNC2(card);

	FUNC3(&cinfo->capi_ctrl);
	FUNC4(card->irq, card);
	FUNC5(card->mbase);
	FUNC7(card->port, AVMB1_PORTLEN);
	FUNC0(card->dma);
	FUNC1(card);
}