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
typedef  int /*<<< orphan*/  u32 ;
struct reg_action {int /*<<< orphan*/  mask; int /*<<< orphan*/  value; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(int cpu, struct reg_action *ra)
{
	u32 msr = (u32)ra->reg;

	if (FUNC1(cpu, msr, &ra->value)) {
		FUNC0("failed to read msr 0x%x on cpu %d\n", msr, cpu);
		return -EIO;
	}
	ra->value &= ra->mask;
	return 0;
}