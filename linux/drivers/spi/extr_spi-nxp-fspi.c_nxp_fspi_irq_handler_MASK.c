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
struct nxp_fspi {int /*<<< orphan*/  c; scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FSPI_INTR ; 
 int FSPI_INTR_IPCMDDONE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nxp_fspi*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nxp_fspi*,int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct nxp_fspi *f = dev_id;
	u32 reg;

	/* clear interrupt */
	reg = FUNC1(f, f->iobase + FSPI_INTR);
	FUNC2(f, FSPI_INTR_IPCMDDONE, f->iobase + FSPI_INTR);

	if (reg & FSPI_INTR_IPCMDDONE)
		FUNC0(&f->c);

	return IRQ_HANDLED;
}