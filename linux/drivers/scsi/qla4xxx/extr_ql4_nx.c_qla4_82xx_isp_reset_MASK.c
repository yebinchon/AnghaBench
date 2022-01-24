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
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_8XXX_RST_OWNER ; 
 int /*<<< orphan*/  AF_FW_RECOVERY ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA8XXX_DEV_NEED_RESET ; 
 scalar_t__ QLA8XXX_DEV_READY ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*) ; 
 int FUNC7 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC9(struct scsi_qla_host *ha)
{
	int rval;
	uint32_t dev_state;

	FUNC2(ha);
	dev_state = FUNC4(ha, QLA82XX_CRB_DEV_STATE);

	if (dev_state == QLA8XXX_DEV_READY) {
		FUNC1(KERN_INFO, ha, "HW State: NEED RESET\n");
		FUNC5(ha, QLA82XX_CRB_DEV_STATE,
		    QLA8XXX_DEV_NEED_RESET);
		FUNC8(AF_8XXX_RST_OWNER, &ha->flags);
	} else
		FUNC1(KERN_INFO, ha, "HW State: DEVICE INITIALIZING\n");

	FUNC3(ha);

	rval = FUNC7(ha);

	FUNC2(ha);
	FUNC6(ha);
	FUNC3(ha);

	if (rval == QLA_SUCCESS) {
		FUNC1(KERN_INFO, ha, "Clearing AF_RECOVERY in qla4_82xx_isp_reset\n");
		FUNC0(AF_FW_RECOVERY, &ha->flags);
	}

	return rval;
}