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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ APCI3120_CTRL_REG ; 
 scalar_t__ APCI3120_MODE_REG ; 
 scalar_t__ APCI3120_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	/* disable all interrupt sources */
	FUNC1(0, dev->iobase + APCI3120_MODE_REG);

	/* disable all counters, ext trigger, and reset scan */
	FUNC2(0, dev->iobase + APCI3120_CTRL_REG);

	/* clear interrupt status */
	FUNC0(dev->iobase + APCI3120_STATUS_REG);
}