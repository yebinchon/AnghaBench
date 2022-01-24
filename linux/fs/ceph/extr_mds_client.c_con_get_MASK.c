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
struct ceph_mds_session {int /*<<< orphan*/  s_ref; } ;
struct ceph_connection {struct ceph_mds_session* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ceph_mds_session*,...) ; 
 scalar_t__ FUNC1 (struct ceph_mds_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ceph_connection *FUNC3(struct ceph_connection *con)
{
	struct ceph_mds_session *s = con->private;

	if (FUNC1(s)) {
		FUNC0("mdsc con_get %p ok (%d)\n", s, FUNC2(&s->s_ref));
		return con;
	}
	FUNC0("mdsc con_get %p FAIL\n", s);
	return NULL;
}