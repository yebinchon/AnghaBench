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
struct inode {int dummy; } ;
struct coda_inode_info {int c_cached_perm; int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_uid; int /*<<< orphan*/  c_cached_epoch; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  permission_epoch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct inode *inode, int mask)
{
	struct coda_inode_info *cii = FUNC0(inode);

	FUNC3(&cii->c_lock);
	cii->c_cached_epoch = FUNC1(&permission_epoch);
	if (!FUNC5(cii->c_uid, FUNC2())) {
		cii->c_uid = FUNC2();
                cii->c_cached_perm = mask;
        } else
                cii->c_cached_perm |= mask;
	FUNC4(&cii->c_lock);
}