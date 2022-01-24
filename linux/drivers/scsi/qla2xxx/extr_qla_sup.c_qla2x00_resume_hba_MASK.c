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
struct scsi_qla_host {int /*<<< orphan*/  host; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  mbx_cmd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  MBX_UPDATE_FLASH_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC5(struct scsi_qla_host *vha)
{
	struct qla_hw_data *ha = vha->hw;

	/* Resume HBA. */
	FUNC0(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);
	FUNC4(ISP_ABORT_NEEDED, &vha->dpc_flags);
	FUNC2(vha);
	FUNC1(vha);
	FUNC3(vha->host);
}