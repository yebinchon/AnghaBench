#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct req_que {scalar_t__ ring; } ;
struct qla_hw_data {struct req_que** req_q_map; } ;
struct qla_flt_location {int start_hi; int start_lo; int /*<<< orphan*/  sig; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 int FA_FLASH_LAYOUT_ADDR ; 
 int FA_FLASH_LAYOUT_ADDR_24 ; 
 int FA_FLASH_LAYOUT_ADDR_28 ; 
 int FA_FLASH_LAYOUT_ADDR_81 ; 
 int FA_FLASH_LAYOUT_ADDR_82 ; 
 int FA_FLASH_LAYOUT_ADDR_83 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,TYPE_1__*,int,char*,char const*,int) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_init ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,TYPE_1__*,int,struct qla_flt_location*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int*,int,int) ; 

__attribute__((used)) static int
FUNC13(scsi_qla_host_t *vha, uint32_t *start)
{
	const char *loc, *locations[] = { "DEF", "PCI" };
	uint32_t pcihdr, pcids;
	uint16_t cnt, chksum, *wptr;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req = ha->req_q_map[0];
	struct qla_flt_location *fltl = (void *)req->ring;
	uint32_t *dcode = (void *)req->ring;
	uint8_t *buf = (void *)req->ring, *bcode,  last_image;

	/*
	 * FLT-location structure resides after the last PCI region.
	 */

	/* Begin with sane defaults. */
	loc = locations[0];
	*start = 0;
	if (FUNC1(ha))
		*start = FA_FLASH_LAYOUT_ADDR_24;
	else if (FUNC2(ha))
		*start = FA_FLASH_LAYOUT_ADDR;
	else if (FUNC5(ha))
		*start = FA_FLASH_LAYOUT_ADDR_81;
	else if (FUNC0(ha)) {
		*start = FA_FLASH_LAYOUT_ADDR_82;
		goto end;
	} else if (FUNC6(ha) || FUNC3(ha)) {
		*start = FA_FLASH_LAYOUT_ADDR_83;
		goto end;
	} else if (FUNC4(ha)) {
		*start = FA_FLASH_LAYOUT_ADDR_28;
		goto end;
	}

	/* Begin with first PCI expansion ROM header. */
	pcihdr = 0;
	do {
		/* Verify PCI expansion ROM header. */
		FUNC12(vha, dcode, pcihdr >> 2, 0x20);
		bcode = buf + (pcihdr % 4);
		if (bcode[0x0] != 0x55 || bcode[0x1] != 0xaa)
			goto end;

		/* Locate PCI data structure. */
		pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);
		FUNC12(vha, dcode, pcids >> 2, 0x20);
		bcode = buf + (pcihdr % 4);

		/* Validate signature of PCI data structure. */
		if (bcode[0x0] != 'P' || bcode[0x1] != 'C' ||
		    bcode[0x2] != 'I' || bcode[0x3] != 'R')
			goto end;

		last_image = bcode[0x15] & BIT_7;

		/* Locate next PCI expansion ROM. */
		pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
	} while (!last_image);

	/* Now verify FLT-location structure. */
	FUNC12(vha, dcode, pcihdr >> 2, sizeof(*fltl) >> 2);
	if (FUNC8(fltl->sig, "QFLT", 4))
		goto end;

	wptr = (void *)req->ring;
	cnt = sizeof(*fltl) / sizeof(*wptr);
	for (chksum = 0; cnt--; wptr++)
		chksum += FUNC7(*wptr);
	if (chksum) {
		FUNC11(ql_log_fatal, vha, 0x0045,
		    "Inconsistent FLTL detected: checksum=0x%x.\n", chksum);
		FUNC10(ql_dbg_init + ql_dbg_buffer, vha, 0x010e,
		    fltl, sizeof(*fltl));
		return QLA_FUNCTION_FAILED;
	}

	/* Good data.  Use specified location. */
	loc = locations[1];
	*start = (FUNC7(fltl->start_hi) << 16 |
	    FUNC7(fltl->start_lo)) >> 2;
end:
	FUNC9(ql_dbg_init, vha, 0x0046,
	    "FLTL[%s] = 0x%x.\n",
	    loc, *start);
	return QLA_SUCCESS;
}