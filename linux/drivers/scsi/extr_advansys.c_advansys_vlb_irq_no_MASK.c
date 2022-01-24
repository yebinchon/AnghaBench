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
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC1(PortAddr iop_base)
{
	unsigned short cfg_lsw = FUNC0(iop_base);
	unsigned int chip_irq = ((cfg_lsw >> 2) & 0x07) + 9;
	if ((chip_irq < 10) || (chip_irq == 13) || (chip_irq > 15))
		return 0;
	return chip_irq;
}