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
struct coda_inode_info {int c_cached_perm; scalar_t__ c_cached_epoch; int /*<<< orphan*/  c_lock; int /*<<< orphan*/  c_uid; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  permission_epoch ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct inode *inode, int mask)
{
	struct coda_inode_info *cii = FUNC0(inode);
	int hit;
	
	FUNC3(&cii->c_lock);
	hit = (mask & cii->c_cached_perm) == mask &&
	    FUNC5(cii->c_uid, FUNC2()) &&
	    cii->c_cached_epoch == FUNC1(&permission_epoch);
	FUNC4(&cii->c_lock);

	return hit;
}