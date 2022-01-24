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
 int NI6527_CLR_IRQS ; 
 scalar_t__ NI6527_CLR_REG ; 
 int NI6527_CLR_RESET_FILT ; 
 int NI6527_CTRL_DISABLE_IRQS ; 
 scalar_t__ NI6527_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	/* disable deglitch filters on all channels */
	FUNC1(dev, 0);

	/* disable edge detection */
	FUNC0(dev, 0xffffffff, 0, 0);

	FUNC2(NI6527_CLR_IRQS | NI6527_CLR_RESET_FILT,
	       dev->mmio + NI6527_CLR_REG);
	FUNC2(NI6527_CTRL_DISABLE_IRQS, dev->mmio + NI6527_CTRL_REG);
}