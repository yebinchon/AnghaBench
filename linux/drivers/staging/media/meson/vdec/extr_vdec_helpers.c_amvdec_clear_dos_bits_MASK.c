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
typedef  int u32 ;
struct amvdec_core {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amvdec_core*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amvdec_core*,int,int) ; 

void FUNC2(struct amvdec_core *core, u32 reg, u32 val)
{
	FUNC1(core, reg, FUNC0(core, reg) & ~val);
}