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
typedef  int /*<<< orphan*/  uint32_t ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA82XX_ROM_LOCK_ID ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int FUNC2 (struct qla_hw_data*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct qla_hw_data *ha, int addr, int *valp)
{
	int ret, loops = 0;
	uint32_t lock_owner = 0;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	while ((FUNC4(ha) != 0) && (loops < 50000)) {
		FUNC7(100);
		FUNC6();
		loops++;
	}
	if (loops >= 50000) {
		lock_owner = FUNC3(ha, QLA82XX_ROM_LOCK_ID);
		FUNC1(ql_log_fatal, vha, 0x00b9,
		    "Failed to acquire SEM2 lock, Lock Owner %u.\n",
		    lock_owner);
		return -1;
	}
	ret = FUNC2(ha, addr, valp);
	FUNC5(ha);
	return ret;
}