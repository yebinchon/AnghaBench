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
struct dentry {int /*<<< orphan*/  d_lock; } ;
struct ceph_dentry_info {scalar_t__ lease_shared_gen; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_dentry_info*) ; 
 struct ceph_dentry_info* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dentry *dentry)
{
	struct ceph_dentry_info *di = FUNC1(dentry);
	FUNC2(&dentry->d_lock);
	di->time = jiffies;
	di->lease_shared_gen = 0;
	FUNC0(di);
	FUNC3(&dentry->d_lock);
}