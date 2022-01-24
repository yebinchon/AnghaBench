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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ssb_bus {int sprom_size; scalar_t__ sprom_offset; scalar_t__ mmio; struct pci_dev* host_pci; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSB_SPROMCTL ; 
 int /*<<< orphan*/  SSB_SPROMCTL_WE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int const,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ssb_bus *bus, const u16 *sprom)
{
	struct pci_dev *pdev = bus->host_pci;
	int i, err;
	u32 spromctl;
	u16 size = bus->sprom_size;

	FUNC5("Writing SPROM. Do NOT turn off the power! Please stand by...\n");
	err = FUNC1(pdev, SSB_SPROMCTL, &spromctl);
	if (err)
		goto err_ctlreg;
	spromctl |= SSB_SPROMCTL_WE;
	err = FUNC2(pdev, SSB_SPROMCTL, spromctl);
	if (err)
		goto err_ctlreg;
	FUNC5("[ 0%%");
	FUNC0(500);
	for (i = 0; i < size; i++) {
		if (i == size / 4)
			FUNC3("25%%");
		else if (i == size / 2)
			FUNC3("50%%");
		else if (i == (size * 3) / 4)
			FUNC3("75%%");
		else if (i % 2)
			FUNC3(".");
		FUNC6(sprom[i], bus->mmio + bus->sprom_offset + (i * 2));
		FUNC0(20);
	}
	err = FUNC1(pdev, SSB_SPROMCTL, &spromctl);
	if (err)
		goto err_ctlreg;
	spromctl &= ~SSB_SPROMCTL_WE;
	err = FUNC2(pdev, SSB_SPROMCTL, spromctl);
	if (err)
		goto err_ctlreg;
	FUNC0(500);
	FUNC3("100%% ]\n");
	FUNC5("SPROM written\n");

	return 0;
err_ctlreg:
	FUNC4("Could not access SPROM control register.\n");
	return err;
}