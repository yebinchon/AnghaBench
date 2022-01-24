#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; } ;
struct cifsLockInfo {TYPE_2__ blist; int /*<<< orphan*/  block_q; TYPE_2__ llist; int /*<<< orphan*/  flags; int /*<<< orphan*/  type; int /*<<< orphan*/  length; int /*<<< orphan*/  offset; } ;
struct cifsInodeInfo {int /*<<< orphan*/  lock_sem; scalar_t__ can_cache_brlcks; } ;
struct cifsFileInfo {TYPE_1__* llist; int /*<<< orphan*/  dentry; } ;
struct TYPE_5__ {TYPE_2__ locks; } ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CIFS_LOCK_OP ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct cifsFileInfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cifsLockInfo**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC8(struct cifsFileInfo *cfile, struct cifsLockInfo *lock,
		 bool wait)
{
	struct cifsLockInfo *conf_lock;
	struct cifsInodeInfo *cinode = FUNC0(FUNC3(cfile->dentry));
	bool exist;
	int rc = 0;

try_again:
	exist = false;
	FUNC1(&cinode->lock_sem);

	exist = FUNC2(cfile, lock->offset, lock->length,
					lock->type, lock->flags, &conf_lock,
					CIFS_LOCK_OP);
	if (!exist && cinode->can_cache_brlcks) {
		FUNC4(&lock->llist, &cfile->llist->locks);
		FUNC6(&cinode->lock_sem);
		return rc;
	}

	if (!exist)
		rc = 1;
	else if (!wait)
		rc = -EACCES;
	else {
		FUNC4(&lock->blist, &conf_lock->blist);
		FUNC6(&cinode->lock_sem);
		rc = FUNC7(lock->block_q,
					(lock->blist.prev == &lock->blist) &&
					(lock->blist.next == &lock->blist));
		if (!rc)
			goto try_again;
		FUNC1(&cinode->lock_sem);
		FUNC5(&lock->blist);
	}

	FUNC6(&cinode->lock_sem);
	return rc;
}