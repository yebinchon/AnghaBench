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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IPU3_PT_ORDER ; 
 int IPU3_PT_PTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 *FUNC2(u32 pteval)
{
	u32 *pt;
	int pte;

	pt = (u32 *)FUNC0(GFP_KERNEL);
	if (!pt)
		return NULL;

	for (pte = 0; pte < IPU3_PT_PTES; pte++)
		pt[pte] = pteval;

	FUNC1((unsigned long int)pt, IPU3_PT_ORDER);

	return pt;
}