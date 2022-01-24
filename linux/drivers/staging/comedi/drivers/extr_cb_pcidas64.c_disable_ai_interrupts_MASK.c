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
struct pcidas64_private {int intr_enable_bits; scalar_t__ main_iobase; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct pcidas64_private* private; } ;

/* Variables and functions */
 int ADC_INTR_SRC_MASK ; 
 int EN_ADC_ACTIVE_INTR_BIT ; 
 int EN_ADC_DONE_INTR_BIT ; 
 int EN_ADC_INTR_SRC_BIT ; 
 int EN_ADC_OVERRUN_BIT ; 
 int EN_ADC_STOP_INTR_BIT ; 
 scalar_t__ INTR_ENABLE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	struct pcidas64_private *devpriv = dev->private;
	unsigned long flags;

	FUNC0(&dev->spinlock, flags);
	devpriv->intr_enable_bits &=
		~EN_ADC_INTR_SRC_BIT & ~EN_ADC_DONE_INTR_BIT &
		~EN_ADC_ACTIVE_INTR_BIT & ~EN_ADC_STOP_INTR_BIT &
		~EN_ADC_OVERRUN_BIT & ~ADC_INTR_SRC_MASK;
	FUNC2(devpriv->intr_enable_bits,
	       devpriv->main_iobase + INTR_ENABLE_REG);
	FUNC1(&dev->spinlock, flags);
}