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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct qla_hw_data {int /*<<< orphan*/  portnum; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA83XX_DRIVER_LOCK ; 
 int /*<<< orphan*/  QLA83XX_DRIVER_LOCKID ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(scsi_qla_host_t *base_vha, uint16_t requester_id)
{
	uint32_t data;
	uint32_t lock_owner;
	struct qla_hw_data *ha = base_vha->hw;

	/* IDC-lock implementation using driver-lock/lock-id remote registers */
retry_lock:
	if (FUNC3(base_vha, QLA83XX_DRIVER_LOCK, &data)
	    == QLA_SUCCESS) {
		if (data) {
			/* Setting lock-id to our function-number */
			FUNC5(base_vha, QLA83XX_DRIVER_LOCKID,
			    ha->portnum);
		} else {
			FUNC3(base_vha, QLA83XX_DRIVER_LOCKID,
			    &lock_owner);
			FUNC0(ql_dbg_p3p, base_vha, 0xb063,
			    "Failed to acquire IDC lock, acquired by %d, "
			    "retrying...\n", lock_owner);

			/* Retry/Perform IDC-Lock recovery */
			if (FUNC2(base_vha)
			    == QLA_SUCCESS) {
				FUNC4();
				goto retry_lock;
			} else
				FUNC1(ql_log_warn, base_vha, 0xb075,
				    "IDC Lock recovery FAILED.\n");
		}

	}

	return;
}