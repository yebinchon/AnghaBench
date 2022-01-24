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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI660X_CLK_CFG ; 
 unsigned int NI660X_CLK_CFG_COUNTER_SWAP ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct comedi_device *dev, int chip)
{
	unsigned int bits = 0;

	/*
	 * See P. 3.5 of the Register-Level Programming manual.
	 * The CounterSwap bit has to be set on the second chip,
	 * otherwise it will try to use the same pins as the
	 * first chip.
	 */
	if (chip)
		bits = NI660X_CLK_CFG_COUNTER_SWAP;

	FUNC0(dev, chip, bits, NI660X_CLK_CFG);
}