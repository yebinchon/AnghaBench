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
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 unsigned int AREF_DIFF ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ICP_MULTI_ADC_CSR ; 
 unsigned int ICP_MULTI_ADC_CSR_DI ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned int ICP_MULTI_ADC_CSR_ST ; 
 scalar_t__ ICP_MULTI_AI ; 
 int FUNC5 (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  icp_multi_ai_eoc ; 
 unsigned int* range_codes_analog ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
				  struct comedi_subdevice *s,
				  struct comedi_insn *insn,
				  unsigned int *data)
{
	unsigned int chan = FUNC1(insn->chanspec);
	unsigned int range = FUNC2(insn->chanspec);
	unsigned int aref = FUNC0(insn->chanspec);
	unsigned int adc_csr;
	int ret = 0;
	int n;

	/* Set mode and range data for specified channel */
	if (aref == AREF_DIFF) {
		adc_csr = FUNC3(chan) |
			  ICP_MULTI_ADC_CSR_DI;
	} else {
		adc_csr = FUNC4(chan);
	}
	adc_csr |= range_codes_analog[range];
	FUNC8(adc_csr, dev->mmio + ICP_MULTI_ADC_CSR);

	for (n = 0; n < insn->n; n++) {
		/*  Set start ADC bit */
		FUNC8(adc_csr | ICP_MULTI_ADC_CSR_ST,
		       dev->mmio + ICP_MULTI_ADC_CSR);

		FUNC7(1);

		/*  Wait for conversion to complete, or get fed up waiting */
		ret = FUNC5(dev, s, insn, icp_multi_ai_eoc, 0);
		if (ret)
			break;

		data[n] = (FUNC6(dev->mmio + ICP_MULTI_AI) >> 4) & 0x0fff;
	}

	return ret ? ret : n;
}