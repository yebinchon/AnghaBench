#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct secure_flash_update_block {int dummy; } ;
struct TYPE_21__ {scalar_t__ fac_supported; int /*<<< orphan*/  secure_fw; scalar_t__ secure_adapter; } ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; TYPE_2__ flags; } ;
struct qla_flt_region {scalar_t__ code; scalar_t__ attribute; } ;
struct TYPE_22__ {int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_20__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BIT_9 ; 
 int /*<<< orphan*/  FAC_SEMAPHORE_LOCK ; 
 int /*<<< orphan*/  FAC_SEMAPHORE_UNLOCK ; 
 int /*<<< orphan*/  FLASH_SEMAPHORE_REGISTER_ADDR ; 
 scalar_t__ FLT_REG_FW ; 
 scalar_t__ FLT_REG_FW_SEC_27XX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  ISP_ABORT_TO_ROM ; 
 int OPTROM_BURST_DWORDS ; 
 int OPTROM_BURST_SIZE ; 
 int QLA_COMMAND_ERROR ; 
 int QLA_SUCCESS ; 
 int FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 scalar_t__ ql_dbg_verbose ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_3__*,int,char*,...) ; 
 scalar_t__ ql_log_warn ; 
 int FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_3__*,int,struct qla_flt_region*) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 int FUNC13 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (TYPE_3__*) ; 
 int FUNC15 (TYPE_3__*) ; 
 int FUNC16 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
	struct qla_hw_data *ha = vha->hw;
	ulong liter;
	ulong dburst = OPTROM_BURST_DWORDS; /* burst size in dwords */
	uint32_t sec_mask, rest_addr, fdata;
	void *optrom = NULL;
	dma_addr_t optrom_dma;
	int rval;
	struct secure_flash_update_block *sfub;
	dma_addr_t sfub_dma;
	uint32_t offset = faddr << 2;
	uint32_t buf_size_without_sfub = 0;
	struct qla_flt_region region;
	bool reset_to_rom = false;
	uint32_t risc_size, risc_attr = 0;
	uint32_t *fw_array = NULL;

	/* Retrieve region info - must be a start address passed in */
	rval = FUNC11(vha, offset, &region);

	if (rval != QLA_SUCCESS) {
		FUNC6(ql_log_warn, vha, 0xffff,
		    "Invalid address %x - not a region start address\n",
		    offset);
		goto done;
	}

	/* Allocate dma buffer for burst write */
	optrom = FUNC1(&ha->pdev->dev, OPTROM_BURST_SIZE,
	    &optrom_dma, GFP_KERNEL);
	if (!optrom) {
		FUNC6(ql_log_warn, vha, 0x7095,
		    "Failed allocate burst (%x bytes)\n", OPTROM_BURST_SIZE);
		rval = QLA_COMMAND_ERROR;
		goto done;
	}

	/*
	 * If adapter supports secure flash and region is secure
	 * extract secure flash update block (SFUB) and verify
	 */
	if (ha->flags.secure_adapter && region.attribute) {

		FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
		    "Region %x is secure\n", region.code);

		if (region.code == FLT_REG_FW ||
		    region.code == FLT_REG_FW_SEC_27XX) {
			fw_array = dwptr;

			/* 1st fw array */
			risc_size = FUNC0(fw_array[3]);
			risc_attr = FUNC0(fw_array[9]);

			buf_size_without_sfub = risc_size;
			fw_array += risc_size;

			/* 2nd fw array */
			risc_size = FUNC0(fw_array[3]);

			buf_size_without_sfub += risc_size;
			fw_array += risc_size;

			/* 1st dump template */
			risc_size = FUNC0(fw_array[2]);

			/* skip header and ignore checksum */
			buf_size_without_sfub += risc_size;
			fw_array += risc_size;

			if (risc_attr & BIT_9) {
				/* 2nd dump template */
				risc_size = FUNC0(fw_array[2]);

				/* skip header and ignore checksum */
				buf_size_without_sfub += risc_size;
				fw_array += risc_size;
			}
		} else {
			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Secure region %x not supported\n",
			    region.code);
			rval = QLA_COMMAND_ERROR;
			goto done;
		}

		sfub = FUNC1(&ha->pdev->dev,
			sizeof(struct secure_flash_update_block), &sfub_dma,
			GFP_KERNEL);
		if (!sfub) {
			FUNC6(ql_log_warn, vha, 0xffff,
			    "Unable to allocate memory for SFUB\n");
			rval = QLA_COMMAND_ERROR;
			goto done;
		}

		rval = FUNC10(vha, dwptr, dwords,
			buf_size_without_sfub, (uint8_t *)sfub);

		if (rval != QLA_SUCCESS)
			goto done;

		FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
		    "SFUB extract and verify successful\n");
	}

	rest_addr = (ha->fdt_block_size >> 2) - 1;
	sec_mask = ~rest_addr;

	/* Lock semaphore */
	rval = FUNC19(vha, FAC_SEMAPHORE_LOCK);
	if (rval != QLA_SUCCESS) {
		FUNC6(ql_log_warn, vha, 0xffff,
		    "Unable to lock flash semaphore.");
		goto done;
	}

	FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
	    "Unprotect flash...\n");
	rval = FUNC9(vha);
	if (rval) {
		FUNC19(vha, FAC_SEMAPHORE_UNLOCK);
		FUNC6(ql_log_warn, vha, 0x7096, "Failed unprotect flash\n");
		goto done;
	}

	for (liter = 0; liter < dwords; liter++, faddr++) {
		fdata = (faddr & sec_mask) << 2;

		/* If start of sector */
		if (!(faddr & rest_addr)) {
			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
			    "Erase sector %#x...\n", faddr);
			rval = FUNC7(vha, fdata);
			if (rval) {
				FUNC5(ql_dbg_user, vha, 0x7007,
				    "Failed erase sector %#x\n", faddr);
				goto write_protect;
			}
		}
	}

	if (ha->flags.secure_adapter) {
		/*
		 * If adapter supports secure flash but FW doesn't,
		 * disable write protect, release semaphore and reset
		 * chip to execute ROM code in order to update region securely
		 */
		if (!ha->flags.secure_fw) {
			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Disable Write and Release Semaphore.");
			rval = FUNC8(vha);
			if (rval != QLA_SUCCESS) {
				FUNC19(vha,
					FAC_SEMAPHORE_UNLOCK);
				FUNC6(ql_log_warn, vha, 0xffff,
				    "Unable to protect flash.");
				goto done;
			}

			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Reset chip to ROM.");
			FUNC20(ISP_ABORT_NEEDED, &vha->dpc_flags);
			FUNC20(ISP_ABORT_TO_ROM, &vha->dpc_flags);
			FUNC17(vha);
			rval = FUNC14(vha);
			if (rval != QLA_SUCCESS) {
				FUNC6(ql_log_warn, vha, 0xffff,
				    "Unable to reset to ROM code.");
				goto done;
			}
			reset_to_rom = true;
			ha->flags.fac_supported = 0;

			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Lock Semaphore");
			rval = FUNC18(vha,
			    FLASH_SEMAPHORE_REGISTER_ADDR, 0x00020002);
			if (rval != QLA_SUCCESS) {
				FUNC6(ql_log_warn, vha, 0xffff,
				    "Unable to lock flash semaphore.");
				goto done;
			}

			/* Unprotect flash */
			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Enable Write.");
			rval = FUNC16(vha, 0x7ffd0101, 0);
			if (rval) {
				FUNC6(ql_log_warn, vha, 0x7096,
				    "Failed unprotect flash\n");
				goto done;
			}
		}

		/* If region is secure, send Secure Flash MB Cmd */
		if (region.attribute && buf_size_without_sfub) {
			FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
			    "Sending Secure Flash MB Cmd\n");
			rval = FUNC12(vha, 0, region.code,
				buf_size_without_sfub, sfub_dma,
				sizeof(struct secure_flash_update_block));
			if (rval != QLA_SUCCESS) {
				FUNC6(ql_log_warn, vha, 0xffff,
				    "Secure Flash MB Cmd failed %x.", rval);
				goto write_protect;
			}
		}

	}

	/* re-init flash offset */
	faddr = offset >> 2;

	for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
		fdata = (faddr & sec_mask) << 2;

		/* If smaller than a burst remaining */
		if (dwords - liter < dburst)
			dburst = dwords - liter;

		/* Copy to dma buffer */
		FUNC4(optrom, dwptr, dburst << 2);

		/* Burst write */
		FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
		    "Write burst (%#lx dwords)...\n", dburst);
		rval = FUNC13(vha, optrom_dma,
		    FUNC3(ha, faddr), dburst);
		if (rval != QLA_SUCCESS) {
			FUNC6(ql_log_warn, vha, 0x7097,
			    "Failed burst write at %x (%p/%#llx)...\n",
			    FUNC3(ha, faddr), optrom,
			    (u64)optrom_dma);
			break;
		}

		liter += dburst - 1;
		faddr += dburst - 1;
		dwptr += dburst - 1;
		continue;
	}

write_protect:
	FUNC6(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
	    "Protect flash...\n");
	rval = FUNC8(vha);
	if (rval) {
		FUNC19(vha, FAC_SEMAPHORE_UNLOCK);
		FUNC6(ql_log_warn, vha, 0x7099,
		    "Failed protect flash\n");
	}

	if (reset_to_rom == true) {
		/* Schedule DPC to restart the RISC */
		FUNC20(ISP_ABORT_NEEDED, &vha->dpc_flags);
		FUNC17(vha);

		rval = FUNC15(vha);
		if (rval != QLA_SUCCESS)
			FUNC6(ql_log_warn, vha, 0xffff,
			    "Adapter did not come out of reset\n");
	}

done:
	if (optrom)
		FUNC2(&ha->pdev->dev,
		    OPTROM_BURST_SIZE, optrom, optrom_dma);

	return rval;
}