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
typedef  void uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  flt_region_img_status_sec; int /*<<< orphan*/  flt_region_img_status_pri; } ;
struct qla27xx_image_status {int image_status_mask; int /*<<< orphan*/  signature; } ;
struct active_regions {scalar_t__ global; } ;
typedef  int /*<<< orphan*/  sec_image_status ;
typedef  int /*<<< orphan*/  pri_image_status ;

/* Variables and functions */
 scalar_t__ QLA27XX_DEFAULT_IMAGE ; 
 scalar_t__ QLA27XX_PRIMARY_IMAGE ; 
 scalar_t__ QLA27XX_SECONDARY_IMAGE ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 scalar_t__ FUNC3 (struct scsi_qla_host*,void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct qla27xx_image_status*) ; 
 scalar_t__ FUNC5 (struct qla27xx_image_status*,struct qla27xx_image_status*) ; 
 scalar_t__ FUNC6 (struct qla27xx_image_status*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,char*,struct qla27xx_image_status*) ; 

void
FUNC8(struct scsi_qla_host *vha,
    struct active_regions *active_regions)
{
	struct qla_hw_data *ha = vha->hw;
	struct qla27xx_image_status pri_image_status, sec_image_status;
	bool valid_pri_image = false, valid_sec_image = false;
	bool active_pri_image = false, active_sec_image = false;

	if (!ha->flt_region_img_status_pri) {
		FUNC2(ql_dbg_init, vha, 0x018a, "Primary image not addressed\n");
		goto check_sec_image;
	}

	if (FUNC3(vha, (void *)(&pri_image_status),
	    ha->flt_region_img_status_pri, sizeof(pri_image_status) >> 2) !=
	    QLA_SUCCESS) {
		FUNC0(true);
		goto check_sec_image;
	}
	FUNC7(vha, "Primary image", &pri_image_status);

	if (FUNC4(&pri_image_status)) {
		FUNC2(ql_dbg_init, vha, 0x018b,
		    "Primary image signature (%#x) not valid\n",
		    FUNC1(pri_image_status.signature));
		goto check_sec_image;
	}

	if (FUNC6(&pri_image_status)) {
		FUNC2(ql_dbg_init, vha, 0x018c,
		    "Primary image checksum failed\n");
		goto check_sec_image;
	}

	valid_pri_image = true;

	if (pri_image_status.image_status_mask & 1) {
		FUNC2(ql_dbg_init, vha, 0x018d,
		    "Primary image is active\n");
		active_pri_image = true;
	}

check_sec_image:
	if (!ha->flt_region_img_status_sec) {
		FUNC2(ql_dbg_init, vha, 0x018a, "Secondary image not addressed\n");
		goto check_valid_image;
	}

	FUNC3(vha, (uint32_t *)(&sec_image_status),
	    ha->flt_region_img_status_sec, sizeof(sec_image_status) >> 2);
	FUNC7(vha, "Secondary image", &sec_image_status);

	if (FUNC4(&sec_image_status)) {
		FUNC2(ql_dbg_init, vha, 0x018b,
		    "Secondary image signature (%#x) not valid\n",
		    FUNC1(sec_image_status.signature));
		goto check_valid_image;
	}

	if (FUNC6(&sec_image_status)) {
		FUNC2(ql_dbg_init, vha, 0x018c,
		    "Secondary image checksum failed\n");
		goto check_valid_image;
	}

	valid_sec_image = true;

	if (sec_image_status.image_status_mask & 1) {
		FUNC2(ql_dbg_init, vha, 0x018d,
		    "Secondary image is active\n");
		active_sec_image = true;
	}

check_valid_image:
	if (valid_pri_image && active_pri_image)
		active_regions->global = QLA27XX_PRIMARY_IMAGE;

	if (valid_sec_image && active_sec_image) {
		if (!active_regions->global ||
		    FUNC5(
			&pri_image_status, &sec_image_status) < 0) {
			active_regions->global = QLA27XX_SECONDARY_IMAGE;
		}
	}

	FUNC2(ql_dbg_init, vha, 0x018f, "active image %s (%u)\n",
	    active_regions->global == QLA27XX_DEFAULT_IMAGE ?
		"default (boot/fw)" :
	    active_regions->global == QLA27XX_PRIMARY_IMAGE ?
		"primary" :
	    active_regions->global == QLA27XX_SECONDARY_IMAGE ?
		"secondary" : "invalid",
	    active_regions->global);
}