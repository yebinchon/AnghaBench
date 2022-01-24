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
typedef  int /*<<< orphan*/  u64 ;
struct ccb_info_result {scalar_t__ state; int /*<<< orphan*/  q_pos; int /*<<< orphan*/  q_num; int /*<<< orphan*/  inst_num; } ;

/* Variables and functions */
 scalar_t__ DAX_CCB_ENQUEUED ; 
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 char* FUNC1 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,struct ccb_info_result*) ; 

__attribute__((used)) static int FUNC4(u64 ca, struct ccb_info_result *info)
{
	unsigned long hv_ret;
	char *err_str;
	int ret = 0;

	FUNC0("attempting info on ca_ra 0x%llx", ca);
	hv_ret = FUNC3(ca, info);

	if (hv_ret == HV_EOK) {
		FUNC2("HV_EOK (ca_ra 0x%llx): %d", ca, info->state);
		if (info->state == DAX_CCB_ENQUEUED) {
			FUNC2("dax_unit %d, queue_num %d, queue_pos %d",
				     info->inst_num, info->q_num, info->q_pos);
		}
	} else {
		err_str = FUNC1(hv_ret, &ret);
		FUNC0("%s (ca_ra 0x%llx)", err_str, ca);
	}

	return ret;
}