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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 unsigned long FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(int base, int reg, int bit)
{
	unsigned long val = FUNC1(base, reg);
	FUNC0(bit, &val);
	FUNC2(base, reg, val);
}