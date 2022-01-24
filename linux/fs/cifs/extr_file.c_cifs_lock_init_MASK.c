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
struct cifsLockInfo {int /*<<< orphan*/  block_q; int /*<<< orphan*/  blist; int /*<<< orphan*/  flags; int /*<<< orphan*/  pid; int /*<<< orphan*/  type; void* length; void* offset; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  void* __u64 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int /*<<< orphan*/  tgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cifsLockInfo* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cifsLockInfo *
FUNC3(__u64 offset, __u64 length, __u8 type, __u16 flags)
{
	struct cifsLockInfo *lock =
		FUNC2(sizeof(struct cifsLockInfo), GFP_KERNEL);
	if (!lock)
		return lock;
	lock->offset = offset;
	lock->length = length;
	lock->type = type;
	lock->pid = current->tgid;
	lock->flags = flags;
	FUNC0(&lock->blist);
	FUNC1(&lock->block_q);
	return lock;
}