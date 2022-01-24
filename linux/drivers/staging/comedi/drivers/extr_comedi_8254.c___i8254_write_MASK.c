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
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct comedi_8254 *i8254,
			  unsigned int val, unsigned int reg)
{
	unsigned int reg_offset = (reg * i8254->iosize) << i8254->regshift;

	switch (i8254->iosize) {
	default:
	case I8254_IO8:
		if (i8254->mmio)
			FUNC3(val, i8254->mmio + reg_offset);
		else
			FUNC0(val, i8254->iobase + reg_offset);
		break;
	case I8254_IO16:
		if (i8254->mmio)
			FUNC5(val, i8254->mmio + reg_offset);
		else
			FUNC2(val, i8254->iobase + reg_offset);
		break;
	case I8254_IO32:
		if (i8254->mmio)
			FUNC4(val, i8254->mmio + reg_offset);
		else
			FUNC1(val, i8254->iobase + reg_offset);
		break;
	}
}