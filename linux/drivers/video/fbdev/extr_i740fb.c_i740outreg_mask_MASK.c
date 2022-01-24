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
typedef  int /*<<< orphan*/  u16 ;
struct i740fb_par {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int FUNC0 (struct i740fb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct i740fb_par *par, u16 port, u8 reg,
				   u8 val, u8 mask)
{
	FUNC1(par->regs, port, reg, (val & mask)
		| (FUNC0(par, port, reg) & ~mask));
}