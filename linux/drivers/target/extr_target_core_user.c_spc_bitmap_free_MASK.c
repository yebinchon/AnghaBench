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
typedef  size_t uint32_t ;

/* Variables and functions */
 size_t FUNC0 (unsigned long*,size_t) ; 

__attribute__((used)) static inline size_t FUNC1(unsigned long *bitmap, uint32_t thresh)
{
	return thresh - FUNC0(bitmap, thresh);
}