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
struct map_ring_valloc_hvm {unsigned long* phys_addrs; size_t idx; unsigned long* addrs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 

__attribute__((used)) static void FUNC1(unsigned long gfn,
					    unsigned int goffset,
					    unsigned int len,
					    void *data)
{
	struct map_ring_valloc_hvm *info = data;
	unsigned long vaddr = (unsigned long)FUNC0(gfn);

	info->phys_addrs[info->idx] = vaddr;
	info->addrs[info->idx] = vaddr;

	info->idx++;
}