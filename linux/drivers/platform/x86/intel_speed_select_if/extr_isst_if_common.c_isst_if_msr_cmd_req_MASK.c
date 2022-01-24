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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct isst_if_msr_cmd {scalar_t__ logical_cpu; int /*<<< orphan*/  data; int /*<<< orphan*/  msr; scalar_t__ read_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EINVAL ; 
 long EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ nr_cpu_ids ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC5(u8 *cmd_ptr, int *write_only, int resume)
{
	struct isst_if_msr_cmd *msr_cmd;
	int ret;

	msr_cmd = (struct isst_if_msr_cmd *)cmd_ptr;

	if (!FUNC2(msr_cmd->msr))
		return -EINVAL;

	if (msr_cmd->logical_cpu >= nr_cpu_ids)
		return -EINVAL;

	if (msr_cmd->read_write) {
		if (!FUNC0(CAP_SYS_ADMIN))
			return -EPERM;

		ret = FUNC4(msr_cmd->logical_cpu,
					 msr_cmd->msr,
					 msr_cmd->data);
		*write_only = 1;
		if (!ret && !resume)
			ret = FUNC1(0, msr_cmd->msr,
					     msr_cmd->logical_cpu,
					     0, 0, msr_cmd->data);
	} else {
		u64 data;

		ret = FUNC3(msr_cmd->logical_cpu,
					 msr_cmd->msr, &data);
		if (!ret) {
			msr_cmd->data = data;
			*write_only = 0;
		}
	}


	return ret;
}