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
struct ceph_cap_snap {scalar_t__ xattr_blob; int /*<<< orphan*/  nref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_cap_snap*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ceph_cap_snap *capsnap)
{
	if (FUNC2(&capsnap->nref)) {
		if (capsnap->xattr_blob)
			FUNC0(capsnap->xattr_blob);
		FUNC1(capsnap);
	}
}