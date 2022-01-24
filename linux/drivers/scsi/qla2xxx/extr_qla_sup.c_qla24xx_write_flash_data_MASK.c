#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; } ;
struct TYPE_11__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ OPTROM_BURST_DWORDS ; 
 int /*<<< orphan*/  OPTROM_BURST_SIZE ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (void*,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 scalar_t__ ql_dbg_verbose ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,TYPE_2__*,int,char*,...) ; 
 scalar_t__ ql_log_warn ; 
 int FUNC12 (TYPE_2__*,scalar_t__) ; 
 int FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__*) ; 
 int FUNC15 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC17(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
	int ret;
	ulong liter;
	ulong dburst = OPTROM_BURST_DWORDS; /* burst size in dwords */
	uint32_t sec_mask, rest_addr, fdata;
	dma_addr_t optrom_dma;
	void *optrom = NULL;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC3(ha) && !FUNC4(ha) &&
	    !FUNC1(ha) && !FUNC2(ha))
		goto next;

	/* Allocate dma buffer for burst write */
	optrom = FUNC6(&ha->pdev->dev, OPTROM_BURST_SIZE,
	    &optrom_dma, GFP_KERNEL);
	if (!optrom) {
		FUNC11(ql_log_warn, vha, 0x7095,
		    "Failed allocate burst (%x bytes)\n", OPTROM_BURST_SIZE);
	}

next:
	FUNC11(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
	    "Unprotect flash...\n");
	ret = FUNC14(vha);
	if (ret) {
		FUNC11(ql_log_warn, vha, 0x7096,
		    "Failed to unprotect flash.\n");
		goto done;
	}

	rest_addr = (ha->fdt_block_size >> 2) - 1;
	sec_mask = ~rest_addr;
	for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
		fdata = (faddr & sec_mask) << 2;

		/* Are we at the beginning of a sector? */
		if (!(faddr & rest_addr)) {
			FUNC11(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
			    "Erase sector %#x...\n", faddr);

			ret = FUNC12(vha, fdata);
			if (ret) {
				FUNC10(ql_dbg_user, vha, 0x7007,
				    "Failed to erase sector %x.\n", faddr);
				break;
			}
		}

		if (optrom) {
			/* If smaller than a burst remaining */
			if (dwords - liter < dburst)
				dburst = dwords - liter;

			/* Copy to dma buffer */
			FUNC9(optrom, dwptr, dburst << 2);

			/* Burst write */
			FUNC11(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
			    "Write burst (%#lx dwords)...\n", dburst);
			ret = FUNC16(vha, optrom_dma,
			    FUNC8(ha, faddr), dburst);
			if (!ret) {
				liter += dburst - 1;
				faddr += dburst - 1;
				dwptr += dburst - 1;
				continue;
			}

			FUNC11(ql_log_warn, vha, 0x7097,
			    "Failed burst-write at %x (%p/%#llx)....\n",
			    FUNC8(ha, faddr), optrom,
			    (u64)optrom_dma);

			FUNC7(&ha->pdev->dev,
			    OPTROM_BURST_SIZE, optrom, optrom_dma);
			optrom = NULL;
			if (FUNC1(ha) || FUNC2(ha))
				break;
			FUNC11(ql_log_warn, vha, 0x7098,
			    "Reverting to slow write...\n");
		}

		/* Slow write */
		ret = FUNC15(ha,
		    FUNC8(ha, faddr), FUNC5(*dwptr));
		if (ret) {
			FUNC10(ql_dbg_user, vha, 0x7006,
			    "Failed slopw write %x (%x)\n", faddr, *dwptr);
			break;
		}
	}

	FUNC11(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
	    "Protect flash...\n");
	ret = FUNC13(vha);
	if (ret)
		FUNC11(ql_log_warn, vha, 0x7099,
		    "Failed to protect flash\n");
done:
	if (optrom)
		FUNC7(&ha->pdev->dev,
		    OPTROM_BURST_SIZE, optrom, optrom_dma);

	return ret;
}