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
struct cb_pcidas_private {scalar_t__ pcibar1; int /*<<< orphan*/  calib_src; } ;

/* Variables and functions */
 unsigned int PCIDAS_CALIB_DAC08_SEL ; 
 unsigned int PCIDAS_CALIB_EN ; 
 scalar_t__ PCIDAS_CALIB_REG ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int val)
{
	struct cb_pcidas_private *devpriv = dev->private;

	val |= PCIDAS_CALIB_EN | FUNC0(devpriv->calib_src);

	/* latch the new value into the caldac */
	FUNC1(val, devpriv->pcibar1 + PCIDAS_CALIB_REG);
	FUNC2(1);
	FUNC1(val | PCIDAS_CALIB_DAC08_SEL,
	     devpriv->pcibar1 + PCIDAS_CALIB_REG);
	FUNC2(1);
	FUNC1(val, devpriv->pcibar1 + PCIDAS_CALIB_REG);
	FUNC2(1);
}