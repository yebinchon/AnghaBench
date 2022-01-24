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
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 int BLOCK_PROTECT_BITS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC3 (struct qla_hw_data*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 int FUNC6 (struct qla_hw_data*,int) ; 

__attribute__((used)) static int
FUNC7(struct qla_hw_data *ha)
{
	int ret;
	uint32_t val;
	scsi_qla_host_t *vha = FUNC0(ha->pdev);

	ret = FUNC1(ha);
	if (ret < 0) {
		FUNC2(ql_log_warn, vha, 0xb014,
		    "ROM Lock failed.\n");
		return ret;
	}

	ret = FUNC3(ha, &val);
	if (ret < 0)
		goto done_unprotect;

	val &= ~(BLOCK_PROTECT_BITS << 2);
	ret = FUNC6(ha, val);
	if (ret < 0) {
		val |= (BLOCK_PROTECT_BITS << 2);
		FUNC6(ha, val);
	}

	if (FUNC5(ha) != 0)
		FUNC2(ql_log_warn, vha, 0xb015,
		    "Write disable failed.\n");

done_unprotect:
	FUNC4(ha);
	return ret;
}