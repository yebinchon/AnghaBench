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
struct mmphw_ctrl {scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ LCD_TOP_CTRL ; 
 scalar_t__ SPU_IRQ_ENA ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mmphw_ctrl *ctrl)
{
	u32 tmp, irq_mask;

	/*
	 * LCD Global control(LCD_TOP_CTRL) should be configed before
	 * any other LCD registers read/write, or there maybe issues.
	 */
	tmp = FUNC2(ctrl->reg_base + LCD_TOP_CTRL);
	tmp |= 0xfff0;
	FUNC3(tmp, ctrl->reg_base + LCD_TOP_CTRL);


	/* disable all interrupts */
	irq_mask = FUNC1(0) | FUNC0(0) |
		   FUNC1(1) | FUNC0(1);
	tmp = FUNC2(ctrl->reg_base + SPU_IRQ_ENA);
	tmp &= ~irq_mask;
	tmp |= irq_mask;
	FUNC3(tmp, ctrl->reg_base + SPU_IRQ_ENA);
}