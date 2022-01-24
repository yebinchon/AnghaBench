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
struct rcar_pcie {int dummy; } ;

/* Variables and functions */
 int CFINIT ; 
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int /*<<< orphan*/  IDSETR1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCIEINTXR ; 
 int /*<<< orphan*/  PCIEMSITXR ; 
 int /*<<< orphan*/  PCIEMSR ; 
 int /*<<< orphan*/  PCIETCTLR ; 
 int PCI_CAP_ID_EXP ; 
 int PCI_CLASS_BRIDGE_PCI ; 
 int /*<<< orphan*/  PCI_EXP_FLAGS ; 
 int PCI_EXP_FLAGS_TYPE ; 
 int /*<<< orphan*/  PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_DLLLARC ; 
 int /*<<< orphan*/  PCI_EXP_SLTCAP ; 
 int PCI_EXP_SLTCAP_PSN ; 
 int PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 int PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  PCI_SECONDARY_BUS ; 
 int /*<<< orphan*/  PCI_SUBORDINATE_BUS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TLCTLR ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_pcie*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rcar_pcie*) ; 
 int FUNC6 (struct rcar_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct rcar_pcie*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct rcar_pcie *pcie)
{
	int err;

	/* Begin initialization */
	FUNC4(pcie, 0, PCIETCTLR);

	/* Set mode */
	FUNC4(pcie, 1, PCIEMSR);

	err = FUNC6(pcie);
	if (err)
		return err;

	/*
	 * Initial header for port config space is type 1, set the device
	 * class to match. Hardware takes care of propagating the IDSETR
	 * settings, so there is no need to bother with a quirk.
	 */
	FUNC4(pcie, PCI_CLASS_BRIDGE_PCI << 16, IDSETR1);

	/*
	 * Setup Secondary Bus Number & Subordinate Bus Number, even though
	 * they aren't used, to avoid bridge being detected as broken.
	 */
	FUNC7(pcie, FUNC1(PCI_SECONDARY_BUS), 0xff, 1);
	FUNC7(pcie, FUNC1(PCI_SUBORDINATE_BUS), 0xff, 1);

	/* Initialize default capabilities. */
	FUNC7(pcie, FUNC2(0), 0xff, PCI_CAP_ID_EXP);
	FUNC7(pcie, FUNC2(PCI_EXP_FLAGS),
		PCI_EXP_FLAGS_TYPE, PCI_EXP_TYPE_ROOT_PORT << 4);
	FUNC7(pcie, FUNC1(PCI_HEADER_TYPE), 0x7f,
		PCI_HEADER_TYPE_BRIDGE);

	/* Enable data link layer active state reporting */
	FUNC7(pcie, FUNC2(PCI_EXP_LNKCAP), PCI_EXP_LNKCAP_DLLLARC,
		PCI_EXP_LNKCAP_DLLLARC);

	/* Write out the physical slot number = 0 */
	FUNC7(pcie, FUNC2(PCI_EXP_SLTCAP), PCI_EXP_SLTCAP_PSN, 0);

	/* Set the completion timer timeout to the maximum 50ms. */
	FUNC7(pcie, TLCTLR + 1, 0x3f, 50);

	/* Terminate list of capabilities (Next Capability Offset=0) */
	FUNC7(pcie, FUNC3(0), 0xfff00000, 0);

	/* Enable MSI */
	if (FUNC0(CONFIG_PCI_MSI))
		FUNC4(pcie, 0x801f0000, PCIEMSITXR);

	/* Finish initialization - establish a PCI Express link */
	FUNC4(pcie, CFINIT, PCIETCTLR);

	/* This will timeout if we don't have a link. */
	err = FUNC5(pcie);
	if (err)
		return err;

	/* Enable INTx interrupts */
	FUNC7(pcie, PCIEINTXR, 0, 0xF << 8);

	FUNC8();

	return 0;
}