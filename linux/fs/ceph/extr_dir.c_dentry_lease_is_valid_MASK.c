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
typedef  int /*<<< orphan*/  u32 ;
struct dentry {int /*<<< orphan*/  d_lock; } ;
struct ceph_mds_session {int dummy; } ;
struct ceph_dentry_info {int /*<<< orphan*/  lease_renew_from; scalar_t__ lease_renew_after; int /*<<< orphan*/  lease_seq; int /*<<< orphan*/  lease_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_MDS_LEASE_RENEW ; 
 int ECHILD ; 
 unsigned int LOOKUP_RCU ; 
 scalar_t__ FUNC0 (struct ceph_dentry_info*) ; 
 struct ceph_dentry_info* FUNC1 (struct dentry*) ; 
 struct ceph_mds_session* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_mds_session*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct dentry*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry, unsigned int flags)
{
	struct ceph_dentry_info *di;
	struct ceph_mds_session *session = NULL;
	u32 seq = 0;
	int valid = 0;

	FUNC6(&dentry->d_lock);
	di = FUNC1(dentry);
	if (di && FUNC0(di)) {
		valid = 1;

		if (di->lease_renew_after &&
		    FUNC8(jiffies, di->lease_renew_after)) {
			/*
			 * We should renew. If we're in RCU walk mode
			 * though, we can't do that so just return
			 * -ECHILD.
			 */
			if (flags & LOOKUP_RCU) {
				valid = -ECHILD;
			} else {
				session = FUNC2(di->lease_session);
				seq = di->lease_seq;
				di->lease_renew_after = 0;
				di->lease_renew_from = jiffies;
			}
		}
	}
	FUNC7(&dentry->d_lock);

	if (session) {
		FUNC3(session, dentry,
					 CEPH_MDS_LEASE_RENEW, seq);
		FUNC4(session);
	}
	FUNC5("dentry_lease_is_valid - dentry %p = %d\n", dentry, valid);
	return valid;
}