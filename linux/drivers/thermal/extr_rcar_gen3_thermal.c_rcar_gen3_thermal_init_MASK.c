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
struct rcar_gen3_thermal_tsc {int dummy; } ;

/* Variables and functions */
 int IRQ_TEMP2 ; 
 int IRQ_TEMPD1 ; 
 int /*<<< orphan*/  REG_GEN3_IRQCTL ; 
 int /*<<< orphan*/  REG_GEN3_IRQEN ; 
 int /*<<< orphan*/  REG_GEN3_IRQMSK ; 
 int /*<<< orphan*/  REG_GEN3_THCTR ; 
 int THCTR_PONM ; 
 int THCTR_THSST ; 
 int FUNC0 (struct rcar_gen3_thermal_tsc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_gen3_thermal_tsc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct rcar_gen3_thermal_tsc *tsc)
{
	u32 reg_val;

	reg_val = FUNC0(tsc, REG_GEN3_THCTR);
	reg_val &= ~THCTR_PONM;
	FUNC1(tsc, REG_GEN3_THCTR, reg_val);

	FUNC2(1000, 2000);

	FUNC1(tsc, REG_GEN3_IRQCTL, 0);
	FUNC1(tsc, REG_GEN3_IRQMSK, 0);
	FUNC1(tsc, REG_GEN3_IRQEN, IRQ_TEMPD1 | IRQ_TEMP2);

	reg_val = FUNC0(tsc, REG_GEN3_THCTR);
	reg_val |= THCTR_THSST;
	FUNC1(tsc, REG_GEN3_THCTR, reg_val);

	FUNC2(1000, 2000);
}