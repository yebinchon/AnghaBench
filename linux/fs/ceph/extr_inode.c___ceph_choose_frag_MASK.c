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
struct ceph_inode_info {int dummy; } ;
struct ceph_inode_frag {int split_by; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ceph_inode_frag* FUNC2 (struct ceph_inode_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct ceph_inode_frag*,struct ceph_inode_frag*,int) ; 

__attribute__((used)) static u32 FUNC8(struct ceph_inode_info *ci, u32 v,
			      struct ceph_inode_frag *pfrag, int *found)
{
	u32 t = FUNC4(0, 0);
	struct ceph_inode_frag *frag;
	unsigned nway, i;
	u32 n;

	if (found)
		*found = 0;

	while (1) {
		FUNC1(!FUNC3(t, v));
		frag = FUNC2(ci, t);
		if (!frag)
			break; /* t is a leaf */
		if (frag->split_by == 0) {
			if (pfrag)
				FUNC7(pfrag, frag, sizeof(*pfrag));
			if (found)
				*found = 1;
			break;
		}

		/* choose child */
		nway = 1 << frag->split_by;
		FUNC6("choose_frag(%x) %x splits by %d (%d ways)\n", v, t,
		     frag->split_by, nway);
		for (i = 0; i < nway; i++) {
			n = FUNC5(t, frag->split_by, i);
			if (FUNC3(n, v)) {
				t = n;
				break;
			}
		}
		FUNC0(i == nway);
	}
	FUNC6("choose_frag(%x) = %x\n", v, t);

	return t;
}