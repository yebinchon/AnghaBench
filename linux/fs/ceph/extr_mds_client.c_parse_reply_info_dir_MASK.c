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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct ceph_mds_reply_dirfrag {int /*<<< orphan*/  ndist; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  bad ; 
 int /*<<< orphan*/  FUNC0 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void **p, void *end,
				struct ceph_mds_reply_dirfrag **dirfrag,
				u64 features)
{
	if (features == (u64)-1) {
		u8 struct_v, struct_compat;
		u32 struct_len;
		FUNC1(p, end, struct_v, bad);
		FUNC1(p, end, struct_compat, bad);
		/* struct_v is expected to be >= 1. we only understand
		 * encoding whose struct_compat == 1. */
		if (!struct_v || struct_compat != 1)
			goto bad;
		FUNC0(p, end, struct_len, bad);
		FUNC2(p, end, struct_len, bad);
		end = *p + struct_len;
	}

	FUNC2(p, end, sizeof(**dirfrag), bad);
	*dirfrag = *p;
	*p += sizeof(**dirfrag) + sizeof(u32) * FUNC3((*dirfrag)->ndist);
	if (FUNC4(*p > end))
		goto bad;
	if (features == (u64)-1)
		*p = end;
	return 0;
bad:
	return -EIO;
}