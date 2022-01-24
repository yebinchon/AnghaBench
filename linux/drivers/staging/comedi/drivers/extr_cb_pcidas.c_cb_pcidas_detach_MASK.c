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
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int /*<<< orphan*/  ao_pacer; scalar_t__ amcc; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 int /*<<< orphan*/  INTCSR_INBOX_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct cb_pcidas_private *devpriv = dev->private;

	if (devpriv) {
		if (devpriv->amcc)
			FUNC2(INTCSR_INBOX_INTR_STATUS,
			     devpriv->amcc + AMCC_OP_REG_INTCSR);
		FUNC1(devpriv->ao_pacer);
	}
	FUNC0(dev);
}