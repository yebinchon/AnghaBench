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
struct dentry {int dummy; } ;
struct ceph_dentry_info {int /*<<< orphan*/ * lease_session; } ;

/* Variables and functions */
 struct ceph_dentry_info* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct dentry *dentry)
{
	struct ceph_dentry_info *di = FUNC0(dentry);

	FUNC1(di->lease_session);
	di->lease_session = NULL;
}