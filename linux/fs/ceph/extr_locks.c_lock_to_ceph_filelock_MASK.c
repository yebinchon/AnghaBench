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
typedef  scalar_t__ u64 ;
struct file_lock {int fl_type; int /*<<< orphan*/  fl_owner; scalar_t__ fl_pid; scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct ceph_filelock {int /*<<< orphan*/  type; void* owner; void* pid; void* client; void* length; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_LOCK_EXCL ; 
 int /*<<< orphan*/  CEPH_LOCK_SHARED ; 
 int /*<<< orphan*/  CEPH_LOCK_UNLOCK ; 
 int EINVAL ; 
#define  F_RDLCK 130 
#define  F_UNLCK 129 
#define  F_WRLCK 128 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file_lock *lock,
				 struct ceph_filelock *cephlock)
{
	int err = 0;
	cephlock->start = FUNC0(lock->fl_start);
	cephlock->length = FUNC0(lock->fl_end - lock->fl_start + 1);
	cephlock->client = FUNC0(0);
	cephlock->pid = FUNC0((u64)lock->fl_pid);
	cephlock->owner = FUNC0(FUNC2(lock->fl_owner));

	switch (lock->fl_type) {
	case F_RDLCK:
		cephlock->type = CEPH_LOCK_SHARED;
		break;
	case F_WRLCK:
		cephlock->type = CEPH_LOCK_EXCL;
		break;
	case F_UNLCK:
		cephlock->type = CEPH_LOCK_UNLOCK;
		break;
	default:
		FUNC1("Have unknown lock type %d\n", lock->fl_type);
		err = -EINVAL;
	}

	return err;
}