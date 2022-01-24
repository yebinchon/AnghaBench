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
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_NOWARN ; 
 void* FUNC0 (unsigned int,int) ; 
 void* FUNC1 (unsigned int) ; 

__attribute__((used)) static inline void *FUNC2(unsigned int size,
					gfp_t gfp)
{
	void *p = FUNC0(size, gfp | __GFP_NOWARN);

	if (!p)
		p = FUNC1(size);

	return p;
}