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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void const*) ; 
 void* FUNC4 (void const*) ; 

__attribute__((used)) static inline void FUNC5(struct scatterlist *sg, const void *buf,
				   unsigned int buflen)
{
	void *addr;
	/*
	 * VMAP_STACK (at least) puts stack into the vmalloc address space
	 */
	if (FUNC0(buf))
		addr = FUNC4(buf);
	else
		addr = FUNC3(buf);
	FUNC2(sg, addr, buflen, FUNC1(buf));
}