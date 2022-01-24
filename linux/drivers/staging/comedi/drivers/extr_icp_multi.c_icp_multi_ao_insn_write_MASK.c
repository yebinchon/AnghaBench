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
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICP_MULTI_AO ; 
 scalar_t__ ICP_MULTI_DAC_CSR ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int ICP_MULTI_DAC_CSR_ST ; 
 int FUNC3 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icp_multi_ao_ready ; 
 unsigned int* range_codes_analog ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				   struct comedi_subdevice *s,
				   struct comedi_insn *insn,
				   unsigned int *data)
{
	unsigned int chan = FUNC0(insn->chanspec);
	unsigned int range = FUNC1(insn->chanspec);
	unsigned int dac_csr;
	int i;

	/* Select channel and range */
	dac_csr = FUNC2(chan);
	dac_csr |= range_codes_analog[range];
	FUNC4(dac_csr, dev->mmio + ICP_MULTI_DAC_CSR);

	for (i = 0; i < insn->n; i++) {
		unsigned int val = data[i];
		int ret;

		/* Wait for analog output to be ready for new data */
		ret = FUNC3(dev, s, insn, icp_multi_ao_ready, 0);
		if (ret)
			return ret;

		FUNC4(val, dev->mmio + ICP_MULTI_AO);

		/* Set start conversion bit to write data to channel */
		FUNC4(dac_csr | ICP_MULTI_DAC_CSR_ST,
		       dev->mmio + ICP_MULTI_DAC_CSR);

		s->readback[chan] = val;
	}

	return insn->n;
}