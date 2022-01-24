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
typedef  int u32 ;
struct block_device {int dummy; } ;
typedef  enum pr_type { ____Placeholder_pr_type } pr_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 unsigned int PR_FL_IGNORE_KEY ; 
 int /*<<< orphan*/  nvme_cmd_resv_acquire ; 
 int FUNC0 (struct block_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct block_device *bdev, u64 key,
		enum pr_type type, unsigned flags)
{
	u32 cdw10;

	if (flags & ~PR_FL_IGNORE_KEY)
		return -EOPNOTSUPP;

	cdw10 = FUNC1(type) << 8;
	cdw10 |= ((flags & PR_FL_IGNORE_KEY) ? 1 << 3 : 0);
	return FUNC0(bdev, cdw10, key, 0, nvme_cmd_resv_acquire);
}