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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int DAX_CCB_RETRIES ; 
 int /*<<< orphan*/  DAX_CCB_USEC ; 
 int EAGAIN ; 
 unsigned long HV_EOK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 char* FUNC1 (unsigned long,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(u64 ca, u16 *kill_res)
{
	unsigned long hv_ret;
	int count, ret = 0;
	char *err_str;

	for (count = 0; count < DAX_CCB_RETRIES; count++) {
		FUNC0("attempting kill on ca_ra 0x%llx", ca);
		hv_ret = FUNC3(ca, kill_res);

		if (hv_ret == HV_EOK) {
			FUNC2("HV_EOK (ca_ra 0x%llx): %d", ca,
				     *kill_res);
		} else {
			err_str = FUNC1(hv_ret, &ret);
			FUNC0("%s (ca_ra 0x%llx)", err_str, ca);
		}

		if (ret != -EAGAIN)
			return ret;
		FUNC2("ccb_kill count = %d", count);
		FUNC4(DAX_CCB_USEC);
	}

	return -EAGAIN;
}