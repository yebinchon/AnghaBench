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
typedef  unsigned int u32 ;
struct radeonfb_info {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct radeonfb_info *rinfo, u32 addr, u32 val, u32 mask)
{
	unsigned long flags;
	unsigned int tmp;

	FUNC2(&rinfo->reg_lock, flags);
	tmp = FUNC0(addr);
	tmp &= (mask);
	tmp |= (val);
	FUNC1(addr, tmp);
	FUNC3(&rinfo->reg_lock, flags);
}