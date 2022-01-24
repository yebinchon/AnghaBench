#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ authorizer; } ;
struct ceph_mds_session {TYPE_1__ s_auth; int /*<<< orphan*/  s_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ceph_mds_session*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ceph_mds_session*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ceph_mds_session *s)
{
	FUNC1("mdsc put_session %p %d -> %d\n", s,
	     FUNC4(&s->s_ref), FUNC4(&s->s_ref)-1);
	if (FUNC3(&s->s_ref)) {
		if (s->s_auth.authorizer)
			FUNC0(s->s_auth.authorizer);
		FUNC2(s);
	}
}