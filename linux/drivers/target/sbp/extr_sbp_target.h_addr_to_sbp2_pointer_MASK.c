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
typedef  int u64 ;
struct sbp2_pointer {void* low; void* high; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 

__attribute__((used)) static inline void FUNC1(u64 addr, struct sbp2_pointer *ptr)
{
	ptr->high = FUNC0(addr >> 32);
	ptr->low = FUNC0(addr);
}