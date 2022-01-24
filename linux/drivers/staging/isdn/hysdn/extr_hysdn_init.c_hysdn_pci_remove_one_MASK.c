#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* next; int /*<<< orphan*/  (* releasehardware ) (TYPE_1__*) ;int /*<<< orphan*/  (* stopcard ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 TYPE_1__* card_last ; 
 TYPE_1__* card_root ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 TYPE_1__* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *akt_pcidev)
{
	hysdn_card *card = FUNC3(akt_pcidev);

	FUNC4(akt_pcidev, NULL);

	if (card->stopcard)
		card->stopcard(card);

#ifdef CONFIG_HYSDN_CAPI
	hycapi_capi_release(card);
#endif

	if (card->releasehardware)
		card->releasehardware(card);   /* free all hardware resources */

	if (card == card_root) {
		card_root = card_root->next;
		if (!card_root)
			card_last = NULL;
	} else {
		hysdn_card *tmp = card_root;
		while (tmp) {
			if (tmp->next == card)
				tmp->next = card->next;
			card_last = tmp;
			tmp = tmp->next;
		}
	}

	FUNC1(card);
	FUNC2(akt_pcidev);
}