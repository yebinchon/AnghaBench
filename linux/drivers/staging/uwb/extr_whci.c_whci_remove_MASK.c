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
struct whci_card {int n_caps; int /*<<< orphan*/  uwbbase; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct whci_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct whci_card* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct whci_card*,int) ; 

__attribute__((used)) static void FUNC10(struct pci_dev *pci)
{
	struct whci_card *card = FUNC4(pci);
	int n;

	FUNC7(pci, NULL);
	/* Unregister each capability in reverse (so the master device
	 * is unregistered last). */
	for (n = card->n_caps; n >= 0 ; n--)
		FUNC9(card, n);
	FUNC5(pci, card->uwbbase);
	FUNC8(FUNC6(pci, 0), FUNC0(card->n_caps));
	FUNC1(card);
	FUNC3(pci);
	FUNC2(pci);
}