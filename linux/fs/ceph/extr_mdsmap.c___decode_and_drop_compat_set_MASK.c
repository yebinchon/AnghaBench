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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  bad ; 
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  FUNC1 (void**,void*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void **p, void* end)
{
	int i;
	/* compat, ro_compat, incompat*/
	for (i = 0; i < 3; i++) {
		u32 n;
		FUNC1(p, end, sizeof(u64) + sizeof(u32), bad);
		/* mask */
		*p += sizeof(u64);
		/* names (map<u64, string>) */
		n = FUNC0(p);
		while (n-- > 0) {
			u32 len;
			FUNC1(p, end, sizeof(u64) + sizeof(u32),
					 bad);
			*p += sizeof(u64);
			len = FUNC0(p);
			FUNC1(p, end, len, bad);
			*p += len;
		}
	}
	return 0;
bad:
	return -1;
}