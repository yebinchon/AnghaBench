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
typedef  int /*<<< orphan*/  u32 ;
struct ufs_hba {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*,size_t) ; 

int FUNC4(struct ufs_hba *hba, size_t offset, size_t len,
		     const char *prefix)
{
	u32 *regs;
	size_t pos;

	if (offset % 4 != 0 || len % 4 != 0) /* keep readl happy */
		return -EINVAL;

	regs = FUNC1(len, GFP_KERNEL);
	if (!regs)
		return -ENOMEM;

	for (pos = 0; pos < len; pos += 4)
		regs[pos / 4] = FUNC3(hba, offset + pos);

	FUNC2(prefix, regs, len);
	FUNC0(regs);

	return 0;
}