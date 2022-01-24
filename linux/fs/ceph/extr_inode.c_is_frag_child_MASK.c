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
struct ceph_inode_frag {scalar_t__ frag; scalar_t__ split_by; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(u32 f, struct ceph_inode_frag *frag)
{
	if (!frag)
		return f == FUNC2(0, 0);
	if (FUNC0(f) != FUNC0(frag->frag) + frag->split_by)
		return false;
	return FUNC1(frag->frag, FUNC3(f));
}