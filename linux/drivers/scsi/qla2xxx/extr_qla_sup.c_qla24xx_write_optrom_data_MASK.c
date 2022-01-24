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
typedef  int uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  host; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  mbx_cmd_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  MBX_UPDATE_FLASH_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct scsi_qla_host*,int*,int,int) ; 
 int FUNC3 (struct scsi_qla_host*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(struct scsi_qla_host *vha, void *buf,
    uint32_t offset, uint32_t length)
{
	int rval;
	struct qla_hw_data *ha = vha->hw;

	/* Suspend HBA. */
	FUNC4(vha->host);
	FUNC6(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);

	/* Go with write. */
	if (FUNC0(ha))
		rval = FUNC3(vha, (uint32_t *)buf,
		    offset >> 2, length >> 2);
	else
		rval = FUNC2(vha, (uint32_t *)buf,
		    offset >> 2, length >> 2);

	FUNC1(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);
	FUNC5(vha->host);

	return rval;
}