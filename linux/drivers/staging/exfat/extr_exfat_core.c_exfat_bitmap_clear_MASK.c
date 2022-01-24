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
typedef  int u8 ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(u8 *bitmap, int i)
{
	bitmap[FUNC0(i)] &= ~(0x01 << FUNC1(i));
}