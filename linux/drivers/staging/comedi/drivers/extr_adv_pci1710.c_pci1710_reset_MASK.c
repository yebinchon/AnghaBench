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
struct comedi_device {scalar_t__ iobase; struct boardtype* board_ptr; } ;
struct boardtype {scalar_t__ has_ao; } ;

/* Variables and functions */
 scalar_t__ PCI171X_CLRFIFO_REG ; 
 scalar_t__ PCI171X_CLRINT_REG ; 
 scalar_t__ PCI171X_CTRL_REG ; 
 scalar_t__ PCI171X_DAREF_REG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PCI171X_DO_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	const struct boardtype *board = dev->board_ptr;

	/*
	 * Disable A/D triggers and interrupt sources, set counter 0
	 * to use internal 1 MHz clock.
	 */
	FUNC2(0, dev->iobase + PCI171X_CTRL_REG);

	/* clear A/D FIFO and any pending interrutps */
	FUNC1(0, dev->iobase + PCI171X_CLRFIFO_REG);
	FUNC1(0, dev->iobase + PCI171X_CLRINT_REG);

	if (board->has_ao) {
		/* set DACs to 0..5V and outputs to 0V */
		FUNC1(0, dev->iobase + PCI171X_DAREF_REG);
		FUNC2(0, dev->iobase + FUNC0(0));
		FUNC2(0, dev->iobase + FUNC0(1));
	}

	/* set digital outputs to 0 */
	FUNC2(0, dev->iobase + PCI171X_DO_REG);
}