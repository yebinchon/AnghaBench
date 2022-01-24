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
struct rcar_gen3_thermal_tsc {int dummy; } ;

/* Variables and functions */
 int CTSR_AOUT ; 
 int CTSR_PONM ; 
 int CTSR_THBGR ; 
 int CTSR_THSST ; 
 int CTSR_VMEN ; 
 int CTSR_VMST ; 
 int IRQ_TEMP2 ; 
 int IRQ_TEMPD1 ; 
 int /*<<< orphan*/  REG_GEN3_CTSR ; 
 int /*<<< orphan*/  REG_GEN3_IRQCTL ; 
 int /*<<< orphan*/  REG_GEN3_IRQEN ; 
 int /*<<< orphan*/  REG_GEN3_IRQMSK ; 
 int /*<<< orphan*/  FUNC0 (struct rcar_gen3_thermal_tsc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct rcar_gen3_thermal_tsc *tsc)
{
	FUNC0(tsc, REG_GEN3_CTSR,  CTSR_THBGR);
	FUNC0(tsc, REG_GEN3_CTSR,  0x0);

	FUNC1(1000, 2000);

	FUNC0(tsc, REG_GEN3_CTSR, CTSR_PONM);

	FUNC0(tsc, REG_GEN3_IRQCTL, 0x3F);
	FUNC0(tsc, REG_GEN3_IRQMSK, 0);
	FUNC0(tsc, REG_GEN3_IRQEN, IRQ_TEMPD1 | IRQ_TEMP2);

	FUNC0(tsc, REG_GEN3_CTSR,
				CTSR_PONM | CTSR_AOUT | CTSR_THBGR | CTSR_VMEN);

	FUNC1(100, 200);

	FUNC0(tsc, REG_GEN3_CTSR,
				CTSR_PONM | CTSR_AOUT | CTSR_THBGR | CTSR_VMEN |
				CTSR_VMST | CTSR_THSST);

	FUNC1(1000, 2000);
}