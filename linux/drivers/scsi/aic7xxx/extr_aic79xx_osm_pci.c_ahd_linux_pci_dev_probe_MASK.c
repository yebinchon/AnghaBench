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
typedef  scalar_t__ u64 ;
struct pci_device_id {int dummy; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  devfn; struct device dev; } ;
struct ahd_softc {int features; struct pci_dev* dev_softc; int /*<<< orphan*/  flags; } ;
struct ahd_pci_identity {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  struct pci_dev* ahd_dev_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHD_39BIT_ADDRESSING ; 
 int /*<<< orphan*/  AHD_64BIT_ADDRESSING ; 
 int AHD_MULTI_FUNC ; 
 scalar_t__ const FUNC0 (int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct ahd_softc* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ahd_pci_identity* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahd_softc*) ; 
 int FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahd_softc*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ahd_softc*,struct ahd_pci_identity const*) ; 
 int /*<<< orphan*/  aic79xx_driver_template ; 
 scalar_t__ FUNC11 (struct device*) ; 
 scalar_t__ FUNC12 (struct device*,scalar_t__ const) ; 
 char* FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,struct ahd_softc*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int,int,int) ; 

__attribute__((used)) static int
FUNC18(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	char		 buf[80];
	struct		 ahd_softc *ahd;
	ahd_dev_softc_t	 pci;
	const struct ahd_pci_identity *entry;
	char		*name;
	int		 error;
	struct device	*dev = &pdev->dev;

	pci = pdev;
	entry = FUNC3(pci);
	if (entry == NULL)
		return (-ENODEV);

	/*
	 * Allocate a softc for this card and
	 * set it up for attachment by our
	 * common detect routine.
	 */
	FUNC17(buf, "ahd_pci:%d:%d:%d",
		FUNC5(pci),
		FUNC7(pci),
		FUNC6(pci));
	name = FUNC13(buf, GFP_ATOMIC);
	if (name == NULL)
		return (-ENOMEM);
	ahd = FUNC2(NULL, name);
	if (ahd == NULL)
		return (-ENOMEM);
	if (FUNC14(pdev)) {
		FUNC4(ahd);
		return (-ENODEV);
	}
	FUNC16(pdev);

	if (sizeof(dma_addr_t) > 4) {
		const u64 required_mask = FUNC11(dev);

		if (required_mask > FUNC0(39) &&
		    FUNC12(dev, FUNC0(64)) == 0)
			ahd->flags |= AHD_64BIT_ADDRESSING;
		else if (required_mask > FUNC0(32) &&
			 FUNC12(dev, FUNC0(39)) == 0)
			ahd->flags |= AHD_39BIT_ADDRESSING;
		else
			FUNC12(dev, FUNC0(32));
	} else {
		FUNC12(dev, FUNC0(32));
	}
	ahd->dev_softc = pci;
	error = FUNC10(ahd, entry);
	if (error != 0) {
		FUNC4(ahd);
		return (-error);
	}

	/*
	 * Second Function PCI devices need to inherit some
	 * * settings from function 0.
	 */
	if ((ahd->features & AHD_MULTI_FUNC) && FUNC1(pdev->devfn) != 0)
		FUNC8(ahd);

	FUNC15(pdev, ahd);

	FUNC9(ahd, &aic79xx_driver_template);
	return (0);
}