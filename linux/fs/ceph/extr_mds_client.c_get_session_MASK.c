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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct ceph_mds_session*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ceph_mds_session *FUNC3(struct ceph_mds_session *s)
{
	if (FUNC1(&s->s_ref)) {
		FUNC0("mdsc get_session %p %d -> %d\n", s,
		     FUNC2(&s->s_ref)-1, FUNC2(&s->s_ref));
		return s;
	} else {
		FUNC0("mdsc get_session %p 0 -- FAIL\n", s);
		return NULL;
	}
}