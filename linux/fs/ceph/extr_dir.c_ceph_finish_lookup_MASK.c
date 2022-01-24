#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct ceph_mds_request {struct dentry* r_dentry; TYPE_2__ r_reply_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_dentry; } ;

/* Variables and functions */
 int ENOENT ; 
 struct dentry* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct dentry*,int /*<<< orphan*/ ) ; 

struct dentry *FUNC7(struct ceph_mds_request *req,
				  struct dentry *dentry, int err)
{
	if (err == -ENOENT) {
		/* no trace? */
		err = 0;
		if (!req->r_reply_info.head->is_dentry) {
			FUNC6("ENOENT and no trace, dentry %p inode %p\n",
			     dentry, FUNC3(dentry));
			if (FUNC4(dentry)) {
				FUNC2(dentry);
				err = -ENOENT;
			} else {
				FUNC1(dentry, NULL);
			}
		}
	}
	if (err)
		dentry = FUNC0(err);
	else if (dentry != req->r_dentry)
		dentry = FUNC5(req->r_dentry);   /* we got spliced */
	else
		dentry = NULL;
	return dentry;
}