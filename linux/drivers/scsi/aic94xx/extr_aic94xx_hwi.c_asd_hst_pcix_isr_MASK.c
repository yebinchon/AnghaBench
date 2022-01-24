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
typedef  int u32 ;
typedef  int u16 ;
struct asd_ha_struct {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECC_CTRL_STAT ; 
 int /*<<< orphan*/  PCIX_STATUS ; 
 int /*<<< orphan*/  PCI_STATUS ; 
 int PCI_STATUS_DETECTED_PARITY ; 
 int PCI_STATUS_PARITY ; 
 int PCI_STATUS_REC_MASTER_ABORT ; 
 int PCI_STATUS_REC_TARGET_ABORT ; 
 int RCV_SCE ; 
 int SC_DISCARD ; 
 int UNCOR_ECCERR ; 
 int UNEXP_SC ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct asd_ha_struct *asd_ha)
{
	u16 status;
	u32 pcix_status;
	u32 ecc_status;

	FUNC4(asd_ha->pcidev, PCI_STATUS, &status);
	FUNC3(asd_ha->pcidev, PCIX_STATUS, &pcix_status);
	FUNC3(asd_ha->pcidev, ECC_CTRL_STAT, &ecc_status);

	if (status & PCI_STATUS_DETECTED_PARITY)
		FUNC1("parity error for %s\n", FUNC2(asd_ha->pcidev));
	else if (status & PCI_STATUS_REC_MASTER_ABORT)
		FUNC1("master abort for %s\n", FUNC2(asd_ha->pcidev));
	else if (status & PCI_STATUS_REC_TARGET_ABORT)
		FUNC1("target abort for %s\n", FUNC2(asd_ha->pcidev));
	else if (status & PCI_STATUS_PARITY)
		FUNC1("data parity for %s\n", FUNC2(asd_ha->pcidev));
	else if (pcix_status & RCV_SCE) {
		FUNC1("received split completion error for %s\n",
			   FUNC2(asd_ha->pcidev));
		FUNC5(asd_ha->pcidev,PCIX_STATUS,pcix_status);
		/* XXX: Abort task? */
		return;
	} else if (pcix_status & UNEXP_SC) {
		FUNC1("unexpected split completion for %s\n",
			   FUNC2(asd_ha->pcidev));
		FUNC5(asd_ha->pcidev,PCIX_STATUS,pcix_status);
		/* ignore */
		return;
	} else if (pcix_status & SC_DISCARD)
		FUNC1("split completion discarded for %s\n",
			   FUNC2(asd_ha->pcidev));
	else if (ecc_status & UNCOR_ECCERR)
		FUNC1("uncorrectable ECC error for %s\n",
			   FUNC2(asd_ha->pcidev));
	FUNC0(asd_ha);
}