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
struct fsl_qspi {int /*<<< orphan*/  dev; int /*<<< orphan*/  c; scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ QUADSPI_FR ; 
 int QUADSPI_FR_TFF_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct fsl_qspi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_qspi*,int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct fsl_qspi *q = dev_id;
	u32 reg;

	/* clear interrupt */
	reg = FUNC2(q, q->iobase + QUADSPI_FR);
	FUNC3(q, reg, q->iobase + QUADSPI_FR);

	if (reg & QUADSPI_FR_TFF_MASK)
		FUNC0(&q->c);

	FUNC1(q->dev, "QUADSPI_FR : 0x%.8x:0x%.8x\n", 0, reg);
	return IRQ_HANDLED;
}