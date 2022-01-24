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
struct ceph_inode_info {int /*<<< orphan*/  i_ceph_flags; int /*<<< orphan*/  i_cap_snaps; } ;
struct TYPE_2__ {scalar_t__ tid; } ;
struct ceph_cap_snap {int /*<<< orphan*/  ci_item; int /*<<< orphan*/  context; TYPE_1__ cap_flush; int /*<<< orphan*/  follows; int /*<<< orphan*/  dirty_pages; int /*<<< orphan*/  writing; int /*<<< orphan*/  need_flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CEPH_I_FLUSH_SNAPS ; 
 int /*<<< orphan*/  FUNC1 (struct ceph_cap_snap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ceph_cap_snap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ceph_inode_info *ci,
				  struct ceph_cap_snap *capsnap)
{
	if (!capsnap->need_flush &&
	    !capsnap->writing && !capsnap->dirty_pages) {
		FUNC3("dropping cap_snap %p follows %llu\n",
		     capsnap, capsnap->follows);
		FUNC0(capsnap->cap_flush.tid > 0);
		FUNC2(capsnap->context);
		if (!FUNC5(&capsnap->ci_item, &ci->i_cap_snaps))
			ci->i_ceph_flags |= CEPH_I_FLUSH_SNAPS;

		FUNC4(&capsnap->ci_item);
		FUNC1(capsnap);
		return 1;
	}
	return 0;
}