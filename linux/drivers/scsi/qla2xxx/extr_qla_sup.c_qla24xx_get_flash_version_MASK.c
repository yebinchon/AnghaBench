#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct qla_hw_data {int* bios_revision; int* efi_revision; int* fcode_revision; int* fw_revision; int flt_region_boot; int flt_region_boot_sec; int flt_region_fw; int flt_region_fw_sec; int* gold_fw_version; int flt_region_gold_fw; } ;
struct active_regions {scalar_t__ global; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int BIT_7 ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ QLA27XX_SECONDARY_IMAGE ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
#define  ROM_CODE_TYPE_BIOS 130 
#define  ROM_CODE_TYPE_EFI 129 
#define  ROM_CODE_TYPE_FCODE 128 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,void*,int,int) ; 
 scalar_t__ FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,struct active_regions*) ; 

int
FUNC13(scsi_qla_host_t *vha, void *mbuf)
{
	int ret = QLA_SUCCESS;
	uint32_t pcihdr = 0, pcids = 0;
	uint32_t *dcode = mbuf;
	uint8_t *bcode = mbuf;
	uint8_t code_type, last_image;
	int i;
	struct qla_hw_data *ha = vha->hw;
	uint32_t faddr = 0;
	struct active_regions active_regions = { };

	if (FUNC0(ha))
		return ret;

	if (!mbuf)
		return QLA_FUNCTION_FAILED;

	FUNC6(ha->bios_revision, 0, sizeof(ha->bios_revision));
	FUNC6(ha->efi_revision, 0, sizeof(ha->efi_revision));
	FUNC6(ha->fcode_revision, 0, sizeof(ha->fcode_revision));
	FUNC6(ha->fw_revision, 0, sizeof(ha->fw_revision));

	pcihdr = ha->flt_region_boot << 2;
	if (FUNC1(ha) || FUNC2(ha)) {
		FUNC12(vha, &active_regions);
		if (active_regions.global == QLA27XX_SECONDARY_IMAGE) {
			pcihdr = ha->flt_region_boot_sec << 2;
		}
	}

	do {
		/* Verify PCI expansion ROM header. */
		FUNC10(vha, dcode, pcihdr >> 2, 0x20);
		bcode = mbuf + (pcihdr % 4);
		if (FUNC5(bcode, "\x55\xaa", 2)) {
			/* No signature */
			FUNC9(ql_log_fatal, vha, 0x0059,
			    "No matching ROM signature.\n");
			ret = QLA_FUNCTION_FAILED;
			break;
		}

		/* Locate PCI data structure. */
		pcids = pcihdr + ((bcode[0x19] << 8) | bcode[0x18]);

		FUNC10(vha, dcode, pcids >> 2, 0x20);
		bcode = mbuf + (pcihdr % 4);

		/* Validate signature of PCI data structure. */
		if (FUNC5(bcode, "PCIR", 4)) {
			/* Incorrect header. */
			FUNC9(ql_log_fatal, vha, 0x005a,
			    "PCI data struct not found pcir_adr=%x.\n", pcids);
			FUNC8(ql_dbg_init, vha, 0x0059, dcode, 32);
			ret = QLA_FUNCTION_FAILED;
			break;
		}

		/* Read version */
		code_type = bcode[0x14];
		switch (code_type) {
		case ROM_CODE_TYPE_BIOS:
			/* Intel x86, PC-AT compatible. */
			ha->bios_revision[0] = bcode[0x12];
			ha->bios_revision[1] = bcode[0x13];
			FUNC7(ql_dbg_init, vha, 0x005b,
			    "Read BIOS %d.%d.\n",
			    ha->bios_revision[1], ha->bios_revision[0]);
			break;
		case ROM_CODE_TYPE_FCODE:
			/* Open Firmware standard for PCI (FCode). */
			ha->fcode_revision[0] = bcode[0x12];
			ha->fcode_revision[1] = bcode[0x13];
			FUNC7(ql_dbg_init, vha, 0x005c,
			    "Read FCODE %d.%d.\n",
			    ha->fcode_revision[1], ha->fcode_revision[0]);
			break;
		case ROM_CODE_TYPE_EFI:
			/* Extensible Firmware Interface (EFI). */
			ha->efi_revision[0] = bcode[0x12];
			ha->efi_revision[1] = bcode[0x13];
			FUNC7(ql_dbg_init, vha, 0x005d,
			    "Read EFI %d.%d.\n",
			    ha->efi_revision[1], ha->efi_revision[0]);
			break;
		default:
			FUNC9(ql_log_warn, vha, 0x005e,
			    "Unrecognized code type %x at pcids %x.\n",
			    code_type, pcids);
			break;
		}

		last_image = bcode[0x15] & BIT_7;

		/* Locate next PCI expansion ROM. */
		pcihdr += ((bcode[0x11] << 8) | bcode[0x10]) * 512;
	} while (!last_image);

	/* Read firmware image information. */
	FUNC6(ha->fw_revision, 0, sizeof(ha->fw_revision));
	faddr = ha->flt_region_fw;
	if (FUNC1(ha) || FUNC2(ha)) {
		FUNC12(vha, &active_regions);
		if (active_regions.global == QLA27XX_SECONDARY_IMAGE)
			faddr = ha->flt_region_fw_sec;
	}

	FUNC10(vha, dcode, faddr, 8);
	if (FUNC11(dcode)) {
		FUNC9(ql_log_warn, vha, 0x005f,
		    "Unrecognized fw revision at %x.\n",
		    ha->flt_region_fw * 4);
		FUNC8(ql_dbg_init, vha, 0x005f, dcode, 32);
	} else {
		for (i = 0; i < 4; i++)
			ha->fw_revision[i] = FUNC4(dcode[4+i]);
		FUNC7(ql_dbg_init, vha, 0x0060,
		    "Firmware revision (flash) %u.%u.%u (%x).\n",
		    ha->fw_revision[0], ha->fw_revision[1],
		    ha->fw_revision[2], ha->fw_revision[3]);
	}

	/* Check for golden firmware and get version if available */
	if (!FUNC3(ha)) {
		/* Golden firmware is not present in non 81XX adapters */
		return ret;
	}

	FUNC6(ha->gold_fw_version, 0, sizeof(ha->gold_fw_version));
	faddr = ha->flt_region_gold_fw;
	FUNC10(vha, (void *)dcode, ha->flt_region_gold_fw, 8);
	if (FUNC11(dcode)) {
		FUNC9(ql_log_warn, vha, 0x0056,
		    "Unrecognized golden fw at %#x.\n", faddr);
		FUNC8(ql_dbg_init, vha, 0x0056, dcode, 32);
		return ret;
	}

	for (i = 0; i < 4; i++)
		ha->gold_fw_version[i] = FUNC4(dcode[4+i]);

	return ret;
}