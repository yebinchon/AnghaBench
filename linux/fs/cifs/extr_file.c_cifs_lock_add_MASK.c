#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cifsLockInfo {int /*<<< orphan*/  llist; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; } ;
struct cifsFileInfo {TYPE_1__* llist; int /*<<< orphan*/  dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  locks; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct cifsFileInfo *cfile, struct cifsLockInfo *lock)
{
	struct cifsInodeInfo *cinode = FUNC0(FUNC2(cfile->dentry));
	FUNC1(&cinode->lock_sem);
	FUNC3(&lock->llist, &cfile->llist->locks);
	FUNC4(&cinode->lock_sem);
}