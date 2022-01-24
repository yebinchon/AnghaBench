#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_fw; int /*<<< orphan*/  pio_address; } ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
#define  ROM_CODE_TYPE_BIOS 130 
#define  ROM_CODE_TYPE_EFI 129 
#define  ROM_CODE_TYPE_FCODE 128 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int,char*,...) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_init ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,TYPE_1__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*,int) ; 
 int FUNC8 (struct qla_hw_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_hw_data*,int*,int,int) ; 

int
FUNC10(scsi_qla_host_t *vha, void *mbuf)
{
	int ret = QLA_SUCCESS;
	uint8_t code_type, last_image;
	uint32_t pcihdr, pcids;
	uint8_t *dbyte;
	uint16_t *dcode;
	struct qla_hw_data *ha = vha->hw;

	if (!ha->pio_address || !mbuf)
		return QLA_FUNCTION_FAILED;

	FUNC1(ha->bios_revision, 0, sizeof(ha->bios_revision));
	FUNC1(ha->efi_revision, 0, sizeof(ha->efi_revision));
	FUNC1(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
	FUNC1(ha->fw_revision, 0, sizeof(ha->fw_revision));

	FUNC6(ha);

	/* Begin with first PCI expansion ROM header. */
	pcihdr = 0;
	last_image = 1;
	do {
		/* Verify PCI expansion ROM header. */
		if (FUNC8(ha, pcihdr) != 0x55 ||
		    FUNC8(ha, pcihdr + 0x01) != 0xaa) {
			/* No signature */
			FUNC4(ql_log_fatal, vha, 0x0050,
			    "No matching ROM signature.\n");
			ret = QLA_FUNCTION_FAILED;
			break;
		}

		/* Locate PCI data structure. */
		pcids = pcihdr +
		    ((FUNC8(ha, pcihdr + 0x19) << 8) |
			FUNC8(ha, pcihdr + 0x18));

		/* Validate signature of PCI data structure. */
		if (FUNC8(ha, pcids) != 'P' ||
		    FUNC8(ha, pcids + 0x1) != 'C' ||
		    FUNC8(ha, pcids + 0x2) != 'I' ||
		    FUNC8(ha, pcids + 0x3) != 'R') {
			/* Incorrect header. */
			FUNC4(ql_log_fatal, vha, 0x0051,
			    "PCI data struct not found pcir_adr=%x.\n", pcids);
			ret = QLA_FUNCTION_FAILED;
			break;
		}

		/* Read version */
		code_type = FUNC8(ha, pcids + 0x14);
		switch (code_type) {
		case ROM_CODE_TYPE_BIOS:
			/* Intel x86, PC-AT compatible. */
			ha->bios_revision[0] =
			    FUNC8(ha, pcids + 0x12);
			ha->bios_revision[1] =
			    FUNC8(ha, pcids + 0x13);
			FUNC2(ql_dbg_init, vha, 0x0052,
			    "Read BIOS %d.%d.\n",
			    ha->bios_revision[1], ha->bios_revision[0]);
			break;
		case ROM_CODE_TYPE_FCODE:
			/* Open Firmware standard for PCI (FCode). */
			/* Eeeewww... */
			FUNC7(ha, pcids);
			break;
		case ROM_CODE_TYPE_EFI:
			/* Extensible Firmware Interface (EFI). */
			ha->efi_revision[0] =
			    FUNC8(ha, pcids + 0x12);
			ha->efi_revision[1] =
			    FUNC8(ha, pcids + 0x13);
			FUNC2(ql_dbg_init, vha, 0x0053,
			    "Read EFI %d.%d.\n",
			    ha->efi_revision[1], ha->efi_revision[0]);
			break;
		default:
			FUNC4(ql_log_warn, vha, 0x0054,
			    "Unrecognized code type %x at pcids %x.\n",
			    code_type, pcids);
			break;
		}

		last_image = FUNC8(ha, pcids + 0x15) & BIT_7;

		/* Locate next PCI expansion ROM. */
		pcihdr += ((FUNC8(ha, pcids + 0x11) << 8) |
		    FUNC8(ha, pcids + 0x10)) * 512;
	} while (!last_image);

	if (FUNC0(ha)) {
		/* Read firmware image information. */
		FUNC1(ha->fw_revision, 0, sizeof(ha->fw_revision));
		dbyte = mbuf;
		FUNC1(dbyte, 0, 8);
		dcode = (uint16_t *)dbyte;

		FUNC9(ha, dbyte, ha->flt_region_fw * 4 + 10,
		    8);
		FUNC2(ql_dbg_init + ql_dbg_buffer, vha, 0x010a,
		    "Dumping fw "
		    "ver from flash:.\n");
		FUNC3(ql_dbg_init + ql_dbg_buffer, vha, 0x010b,
		    dbyte, 32);

		if ((dcode[0] == 0xffff && dcode[1] == 0xffff &&
		    dcode[2] == 0xffff && dcode[3] == 0xffff) ||
		    (dcode[0] == 0 && dcode[1] == 0 && dcode[2] == 0 &&
		    dcode[3] == 0)) {
			FUNC4(ql_log_warn, vha, 0x0057,
			    "Unrecognized fw revision at %x.\n",
			    ha->flt_region_fw * 4);
		} else {
			/* values are in big endian */
			ha->fw_revision[0] = dbyte[0] << 16 | dbyte[1];
			ha->fw_revision[1] = dbyte[2] << 16 | dbyte[3];
			ha->fw_revision[2] = dbyte[4] << 16 | dbyte[5];
			FUNC2(ql_dbg_init, vha, 0x0058,
			    "FW Version: "
			    "%d.%d.%d.\n", ha->fw_revision[0],
			    ha->fw_revision[1], ha->fw_revision[2]);
		}
	}

	FUNC5(ha);

	return ret;
}