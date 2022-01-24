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
struct whci_card {int n_caps; int /*<<< orphan*/  uwbbase; struct pci_dev* pci; } ;
struct umc_dev {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct whci_card*) ; 
 struct whci_card* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct whci_card*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (struct whci_card*,int) ; 
 int FUNC20 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC21(struct pci_dev *pci, const struct pci_device_id *id)
{
	struct whci_card *card;
	int err, n_caps, n;

	err = FUNC8(pci);
	if (err < 0)
		goto error;
	FUNC9(pci);
	FUNC16(pci);
	err = -ENXIO;
	if (!FUNC14(pci, FUNC0(64)))
		FUNC13(pci, FUNC0(64));
	else if (!FUNC14(pci, FUNC0(32)))
		FUNC13(pci, FUNC0(32));
	else
		goto error_dma;

	err = n_caps = FUNC20(pci);
	if (n_caps < 0)
		goto error_ncaps;

	err = -ENOMEM;
	card = FUNC5(sizeof(struct whci_card)
		       + sizeof(struct umc_dev *) * (n_caps + 1),
		       GFP_KERNEL);
	if (card == NULL)
		goto error_kzalloc;
	card->pci = pci;
	card->n_caps = n_caps;

	err = -EBUSY;
	if (!FUNC18(FUNC12(pci, 0),
				FUNC1(card->n_caps),
				"whci (capability data)"))
		goto error_request_memregion;
	err = -ENOMEM;
	card->uwbbase = FUNC10(pci, 0, FUNC1(card->n_caps));
	if (!card->uwbbase)
		goto error_iomap;

	/* Add each capability. */
	for (n = 0; n <= card->n_caps; n++) {
		err = FUNC19(card, n);
		if (err < 0 && n == 0) {
			FUNC2(&pci->dev, "cannot bind UWB radio controller:"
				" %d\n", err);
			goto error_bind;
		}
		if (err < 0)
			FUNC3(&pci->dev, "warning: cannot bind capability "
				 "#%u: %d\n", n, err);
	}
	FUNC15(pci, card);
	return 0;

error_bind:
	FUNC11(pci, card->uwbbase);
error_iomap:
	FUNC17(FUNC12(pci, 0), FUNC1(card->n_caps));
error_request_memregion:
	FUNC4(card);
error_kzalloc:
error_ncaps:
error_dma:
	FUNC7(pci);
	FUNC6(pci);
error:
	return err;
}