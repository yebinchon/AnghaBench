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
struct ecryptfs_dentry_info {int /*<<< orphan*/  rcu; int /*<<< orphan*/  lower_path; } ;
struct dentry {struct ecryptfs_dentry_info* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ecryptfs_dentry_free_rcu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dentry *dentry)
{
	struct ecryptfs_dentry_info *p = dentry->d_fsdata;
	if (p) {
		FUNC1(&p->lower_path);
		FUNC0(&p->rcu, ecryptfs_dentry_free_rcu);
	}
}