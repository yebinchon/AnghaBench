#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {scalar_t__ mmio; } ;
struct TYPE_2__ {unsigned int offset; int size; } ;

/* Variables and functions */
 unsigned int NI660X_CHIP_OFFSET ; 
 TYPE_1__* ni_660x_reg_data ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev, unsigned int chip,
			  unsigned int bits, unsigned int reg)
{
	unsigned int addr = (chip * NI660X_CHIP_OFFSET) +
			    ni_660x_reg_data[reg].offset;

	if (ni_660x_reg_data[reg].size == 2)
		FUNC1(bits, dev->mmio + addr);
	else
		FUNC0(bits, dev->mmio + addr);
}