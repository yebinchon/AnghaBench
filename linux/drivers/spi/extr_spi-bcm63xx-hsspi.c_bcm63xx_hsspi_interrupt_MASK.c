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
struct bcm63xx_hsspi {int /*<<< orphan*/  done; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSSPI_INT_CLEAR_ALL ; 
 scalar_t__ HSSPI_INT_MASK_REG ; 
 scalar_t__ HSSPI_INT_STATUS_MASKED_REG ; 
 scalar_t__ HSSPI_INT_STATUS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct bcm63xx_hsspi *bs = (struct bcm63xx_hsspi *)dev_id;

	if (FUNC0(bs->regs + HSSPI_INT_STATUS_MASKED_REG) == 0)
		return IRQ_NONE;

	FUNC1(HSSPI_INT_CLEAR_ALL, bs->regs + HSSPI_INT_STATUS_REG);
	FUNC1(0, bs->regs + HSSPI_INT_MASK_REG);

	FUNC2(&bs->done);

	return IRQ_HANDLED;
}