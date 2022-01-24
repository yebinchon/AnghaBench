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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int ctrl; scalar_t__ pcibar1; } ;

/* Variables and functions */
 int PCIDAS_AI_PACER_SW ; 
 scalar_t__ PCIDAS_AI_REG ; 
 int PCIDAS_CTRL_EOAIE ; 
 int PCIDAS_CTRL_INTE ; 
 scalar_t__ PCIDAS_CTRL_REG ; 
 scalar_t__ PCIDAS_TRIG_REG ; 
 int PCIDAS_TRIG_SEL_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			       struct comedi_subdevice *s)
{
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned long flags;

	FUNC1(&dev->spinlock, flags);
	/*  disable interrupts */
	devpriv->ctrl &= ~(PCIDAS_CTRL_INTE | PCIDAS_CTRL_EOAIE);
	FUNC0(devpriv->ctrl, devpriv->pcibar1 + PCIDAS_CTRL_REG);
	FUNC2(&dev->spinlock, flags);

	/*  disable start trigger source and burst mode */
	FUNC0(PCIDAS_TRIG_SEL_NONE, devpriv->pcibar1 + PCIDAS_TRIG_REG);
	FUNC0(PCIDAS_AI_PACER_SW, devpriv->pcibar1 + PCIDAS_AI_REG);

	return 0;
}