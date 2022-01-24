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
struct comedi_8254 {unsigned int iosize; unsigned int regshift; int /*<<< orphan*/  iobase; int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
#define  I8254_IO16 130 
#define  I8254_IO32 129 
#define  I8254_IO8 128 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct comedi_8254 *i8254, unsigned int reg)
{
	unsigned int reg_offset = (reg * i8254->iosize) << i8254->regshift;
	unsigned int val;

	switch (i8254->iosize) {
	default:
	case I8254_IO8:
		if (i8254->mmio)
			val = FUNC3(i8254->mmio + reg_offset);
		else
			val = FUNC0(i8254->iobase + reg_offset);
		break;
	case I8254_IO16:
		if (i8254->mmio)
			val = FUNC5(i8254->mmio + reg_offset);
		else
			val = FUNC2(i8254->iobase + reg_offset);
		break;
	case I8254_IO32:
		if (i8254->mmio)
			val = FUNC4(i8254->mmio + reg_offset);
		else
			val = FUNC1(i8254->iobase + reg_offset);
		break;
	}
	return val & 0xff;
}