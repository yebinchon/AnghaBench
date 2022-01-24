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
 scalar_t__ ICP_MULTI_AO ; 
 scalar_t__ ICP_MULTI_DAC_CSR ; 
 unsigned int FUNC0 (int) ; 
 unsigned int ICP_MULTI_DAC_CSR_ST ; 
 scalar_t__ ICP_MULTI_DO ; 
 scalar_t__ ICP_MULTI_INT_EN ; 
 unsigned int ICP_MULTI_INT_MASK ; 
 scalar_t__ ICP_MULTI_INT_STAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	int i;

	/* Disable all interrupts and clear any requests */
	FUNC2(0, dev->mmio + ICP_MULTI_INT_EN);
	FUNC2(ICP_MULTI_INT_MASK, dev->mmio + ICP_MULTI_INT_STAT);

	/* Reset the analog output channels to 0V */
	for (i = 0; i < 4; i++) {
		unsigned int dac_csr = FUNC0(i);

		/* Select channel and 0..5V range */
		FUNC2(dac_csr, dev->mmio + ICP_MULTI_DAC_CSR);

		/* Output 0V */
		FUNC2(0, dev->mmio + ICP_MULTI_AO);

		/* Set start conversion bit to write data to channel */
		FUNC2(dac_csr | ICP_MULTI_DAC_CSR_ST,
		       dev->mmio + ICP_MULTI_DAC_CSR);
		FUNC1(1);
	}

	/* Digital outputs to 0 */
	FUNC2(0, dev->mmio + ICP_MULTI_DO);

	return 0;
}