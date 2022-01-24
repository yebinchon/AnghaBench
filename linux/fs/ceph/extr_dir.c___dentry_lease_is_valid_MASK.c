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
typedef  scalar_t__ u32 ;
struct ceph_mds_session {scalar_t__ s_cap_gen; unsigned long s_cap_ttl; int /*<<< orphan*/  s_gen_ttl_lock; } ;
struct ceph_dentry_info {scalar_t__ lease_gen; unsigned long time; struct ceph_mds_session* lease_session; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct ceph_dentry_info *di)
{
	struct ceph_mds_session *session;

	if (!di->lease_gen)
		return false;

	session = di->lease_session;
	if (session) {
		u32 gen;
		unsigned long ttl;

		FUNC0(&session->s_gen_ttl_lock);
		gen = session->s_cap_gen;
		ttl = session->s_cap_ttl;
		FUNC1(&session->s_gen_ttl_lock);

		if (di->lease_gen == gen &&
		    FUNC2(jiffies, ttl) &&
		    FUNC2(jiffies, di->time))
			return true;
	}
	di->lease_gen = 0;
	return false;
}