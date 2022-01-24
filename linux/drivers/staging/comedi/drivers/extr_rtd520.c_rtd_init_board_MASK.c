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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 scalar_t__ LAS0_ADC_FIFO_CLEAR ; 
 scalar_t__ LAS0_CGT_CLEAR ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ LAS0_DIO_STATUS ; 
 scalar_t__ LAS0_OVERRUN ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev)
{
	FUNC1(dev);

	FUNC2(0, dev->mmio + LAS0_OVERRUN);
	FUNC2(0, dev->mmio + LAS0_CGT_CLEAR);
	FUNC2(0, dev->mmio + LAS0_ADC_FIFO_CLEAR);
	FUNC2(0, dev->mmio + FUNC0(0));
	FUNC2(0, dev->mmio + FUNC0(1));
	/* clear digital IO fifo */
	FUNC3(0, dev->mmio + LAS0_DIO_STATUS);
	/* TODO: set user out source ??? */
}