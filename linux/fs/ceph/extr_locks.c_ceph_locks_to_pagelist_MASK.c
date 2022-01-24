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
struct ceph_pagelist {int dummy; } ;
struct ceph_filelock {int dummy; } ;
typedef  int /*<<< orphan*/  nlocks ;
typedef  struct ceph_filelock __le32 ;

/* Variables and functions */
 int FUNC0 (struct ceph_pagelist*,struct ceph_filelock*,int) ; 
 struct ceph_filelock FUNC1 (int) ; 

int FUNC2(struct ceph_filelock *flocks,
			   struct ceph_pagelist *pagelist,
			   int num_fcntl_locks, int num_flock_locks)
{
	int err = 0;
	__le32 nlocks;

	nlocks = FUNC1(num_fcntl_locks);
	err = FUNC0(pagelist, &nlocks, sizeof(nlocks));
	if (err)
		goto out_fail;

	if (num_fcntl_locks > 0) {
		err = FUNC0(pagelist, flocks,
					   num_fcntl_locks * sizeof(*flocks));
		if (err)
			goto out_fail;
	}

	nlocks = FUNC1(num_flock_locks);
	err = FUNC0(pagelist, &nlocks, sizeof(nlocks));
	if (err)
		goto out_fail;

	if (num_flock_locks > 0) {
		err = FUNC0(pagelist, &flocks[num_fcntl_locks],
					   num_flock_locks * sizeof(*flocks));
	}
out_fail:
	return err;
}