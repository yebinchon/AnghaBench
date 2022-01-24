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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct qla_hw_data *ha)
{
	int loops = 0;
	uint32_t lock_owner = 0;
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	while ((FUNC4(ha) != 0) && (loops < 50000)) {
		FUNC5(100);
		FUNC0();
		loops++;
	}
	if (loops >= 50000) {
		lock_owner = FUNC3(ha, QLA82XX_ROM_LOCK_ID);
		FUNC2(ql_log_warn, vha, 0xb010,
		    "ROM lock failed, Lock Owner %u.\n", lock_owner);
		return -1;
	}
	return 0;
}