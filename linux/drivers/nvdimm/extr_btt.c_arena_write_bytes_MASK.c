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
struct nd_namespace_common {int dummy; } ;
struct nd_btt {struct nd_namespace_common* ndns; } ;
struct arena_info {struct nd_btt* nd_btt; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nd_btt*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nd_namespace_common*,int /*<<< orphan*/ ,void*,size_t,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct arena_info *arena, resource_size_t offset,
		void *buf, size_t n, unsigned long flags)
{
	struct nd_btt *nd_btt = arena->nd_btt;
	struct nd_namespace_common *ndns = nd_btt->ndns;

	/* arena offsets may be shifted from the base of the device */
	offset = FUNC0(nd_btt, offset);
	return FUNC1(ndns, offset, buf, n, flags);
}