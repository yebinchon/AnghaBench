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
struct ashmem_range {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ashmem_range*,size_t) ; 
 scalar_t__ FUNC1 (struct ashmem_range*,size_t,size_t) ; 

__attribute__((used)) static inline bool FUNC2(struct ashmem_range *range,
				       size_t start, size_t end)
{
	return FUNC0(range, start) || FUNC0(range, end) ||
		FUNC1(range, start, end);
}