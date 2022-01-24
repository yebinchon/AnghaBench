#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  capi_ctrl; TYPE_2__* card; } ;
typedef  TYPE_1__ avmctrl_info ;
struct TYPE_7__ {int /*<<< orphan*/  port; int /*<<< orphan*/  irq; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int /*<<< orphan*/  AVMB1_PORTLEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	avmctrl_info *cinfo = FUNC4(pdev);
	avmcard *card;

	if (!cinfo)
		return;

	card = cinfo->card;

	FUNC1(card->port);
	FUNC1(card->port);

	FUNC2(&cinfo->capi_ctrl);
	FUNC3(card->irq, card);
	FUNC5(card->port, AVMB1_PORTLEN);
	FUNC0(card);
}