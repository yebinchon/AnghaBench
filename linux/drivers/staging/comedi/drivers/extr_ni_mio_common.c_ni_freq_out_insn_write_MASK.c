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
struct ni_private {int /*<<< orphan*/  clock_and_fout; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {struct ni_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  NISTC_CLK_FOUT_DIVIDER_MASK ; 
 int /*<<< orphan*/  NISTC_CLK_FOUT_ENA ; 
 int /*<<< orphan*/  NISTC_CLK_FOUT_REG ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	struct ni_private *devpriv = dev->private;

	if (insn->n) {
		unsigned int val = data[insn->n - 1];

		devpriv->clock_and_fout &= ~NISTC_CLK_FOUT_ENA;
		FUNC1(dev, devpriv->clock_and_fout, NISTC_CLK_FOUT_REG);
		devpriv->clock_and_fout &= ~NISTC_CLK_FOUT_DIVIDER_MASK;

		/* use the last data value to set the fout divider */
		devpriv->clock_and_fout |= FUNC0(val);

		devpriv->clock_and_fout |= NISTC_CLK_FOUT_ENA;
		FUNC1(dev, devpriv->clock_and_fout, NISTC_CLK_FOUT_REG);
	}
	return insn->n;
}