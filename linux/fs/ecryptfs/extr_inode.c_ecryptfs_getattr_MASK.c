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
struct path {struct dentry* dentry; } ;
struct kstat {int /*<<< orphan*/  blocks; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct kstat*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(const struct path *path, struct kstat *stat,
			    u32 request_mask, unsigned int flags)
{
	struct dentry *dentry = path->dentry;
	struct kstat lower_stat;
	int rc;

	rc = FUNC5(FUNC1(dentry), &lower_stat,
			 request_mask, flags);
	if (!rc) {
		FUNC3(FUNC0(dentry),
				      FUNC2(FUNC0(dentry)));
		FUNC4(FUNC0(dentry), stat);
		stat->blocks = lower_stat.blocks;
	}
	return rc;
}