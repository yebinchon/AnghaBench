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
struct comedi_device {struct cb_pcidas_private* private; } ;
struct cb_pcidas_private {int /*<<< orphan*/  ao_buffer; scalar_t__ pcibar4; } ;

/* Variables and functions */
 scalar_t__ PCIDAS_AO_FIFO_REG ; 
 unsigned int FUNC0 (struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (struct comedi_subdevice*,unsigned int) ; 
 unsigned int FUNC2 (struct comedi_subdevice*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   unsigned int nsamples)
{
	struct cb_pcidas_private *devpriv = dev->private;
	unsigned int nbytes;

	nsamples = FUNC2(s, nsamples);
	nbytes = FUNC0(s, devpriv->ao_buffer, nsamples);

	nsamples = FUNC1(s, nbytes);
	FUNC3(devpriv->pcibar4 + PCIDAS_AO_FIFO_REG,
	      devpriv->ao_buffer, nsamples);
}