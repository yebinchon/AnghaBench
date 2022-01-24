#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct switchtec_dev {int pff_csr_count; int* pff_local; TYPE_1__* mmio_pff_csr; struct part_cfg_regs* mmio_part_cfg; } ;
struct part_cfg_regs {int /*<<< orphan*/ * dsp_pff_inst_id; int /*<<< orphan*/  vep_pff_inst_id; int /*<<< orphan*/  usp_pff_inst_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  vendor_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int PCI_VENDOR_ID_MICROSEMI ; 
 int SWITCHTEC_MAX_PFF_CSR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct switchtec_dev *stdev)
{
	int i;
	u32 reg;
	struct part_cfg_regs *pcfg = stdev->mmio_part_cfg;

	for (i = 0; i < SWITCHTEC_MAX_PFF_CSR; i++) {
		reg = FUNC1(&stdev->mmio_pff_csr[i].vendor_id);
		if (reg != PCI_VENDOR_ID_MICROSEMI)
			break;
	}

	stdev->pff_csr_count = i;

	reg = FUNC2(&pcfg->usp_pff_inst_id);
	if (reg < SWITCHTEC_MAX_PFF_CSR)
		stdev->pff_local[reg] = 1;

	reg = FUNC2(&pcfg->vep_pff_inst_id);
	if (reg < SWITCHTEC_MAX_PFF_CSR)
		stdev->pff_local[reg] = 1;

	for (i = 0; i < FUNC0(pcfg->dsp_pff_inst_id); i++) {
		reg = FUNC2(&pcfg->dsp_pff_inst_id[i]);
		if (reg < SWITCHTEC_MAX_PFF_CSR)
			stdev->pff_local[reg] = 1;
	}
}