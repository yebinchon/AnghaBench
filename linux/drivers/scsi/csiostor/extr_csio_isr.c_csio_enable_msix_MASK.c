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
struct irq_affinity {int pre_vectors; struct csio_hw* priv; int /*<<< orphan*/  calc_sets; } ;
struct csio_scsi_cpu_info {int max_cpus; } ;
struct csio_hw {int num_pports; int num_sqsets; int flags; int num_scsi_msix_cpus; TYPE_1__** sqset; struct csio_scsi_cpu_info* scsi_cpu_info; int /*<<< orphan*/  pdev; int /*<<< orphan*/  cfg_niq; } ;
struct TYPE_2__ {int intr_idx; } ;

/* Variables and functions */
 int CSIO_EXTRA_VECS ; 
 int CSIO_HWF_USING_SOFT_PARAMS ; 
 int ENOSPC ; 
 int IRQ_AFFINITY_MAX_SETS ; 
 int PCI_IRQ_AFFINITY ; 
 int PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  csio_calc_sets ; 
 int /*<<< orphan*/  FUNC0 (struct csio_hw*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct csio_hw*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int,int,struct irq_affinity*) ; 
 int /*<<< orphan*/  uint8_t ; 

__attribute__((used)) static int
FUNC9(struct csio_hw *hw)
{
	int i, j, k, n, min, cnt;
	int extra = CSIO_EXTRA_VECS;
	struct csio_scsi_cpu_info *info;
	struct irq_affinity desc = {
		.pre_vectors = CSIO_EXTRA_VECS,
		.calc_sets = csio_calc_sets,
		.priv = hw,
	};

	if (hw->num_pports > IRQ_AFFINITY_MAX_SETS)
		return -ENOSPC;

	min = hw->num_pports + extra;
	cnt = hw->num_sqsets + extra;

	/* Max vectors required based on #niqs configured in fw */
	if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS || !FUNC2(hw))
		cnt = FUNC7(uint8_t, hw->cfg_niq, cnt);

	FUNC0(hw, "FW supp #niq:%d, trying %d msix's\n", hw->cfg_niq, cnt);

	cnt = FUNC8(hw->pdev, min, cnt,
			PCI_IRQ_MSIX | PCI_IRQ_AFFINITY, &desc);
	if (cnt < 0)
		return cnt;

	if (cnt < (hw->num_sqsets + extra)) {
		FUNC0(hw, "Reducing sqsets to %d\n", cnt - extra);
		FUNC3(hw, cnt - extra);
	}

	/* Distribute vectors */
	k = 0;
	FUNC6(hw, k);
	FUNC5(FUNC1(hw), k++);
	FUNC4(hw, k++);

	for (i = 0; i < hw->num_pports; i++) {
		info = &hw->scsi_cpu_info[i];

		for (j = 0; j < hw->num_scsi_msix_cpus; j++) {
			n = (j % info->max_cpus) +  k;
			hw->sqset[i][j].intr_idx = n;
		}

		k += info->max_cpus;
	}

	return 0;
}