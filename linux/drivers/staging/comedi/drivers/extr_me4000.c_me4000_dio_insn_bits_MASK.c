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
struct comedi_subdevice {int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ ME4000_DIO_PORT_0_REG ; 
 scalar_t__ ME4000_DIO_PORT_1_REG ; 
 scalar_t__ ME4000_DIO_PORT_2_REG ; 
 scalar_t__ ME4000_DIO_PORT_3_REG ; 
 scalar_t__ FUNC0 (struct comedi_subdevice*,unsigned int*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
				struct comedi_subdevice *s,
				struct comedi_insn *insn,
				unsigned int *data)
{
	if (FUNC0(s, data)) {
		FUNC2((s->state >> 0) & 0xFF,
		     dev->iobase + ME4000_DIO_PORT_0_REG);
		FUNC2((s->state >> 8) & 0xFF,
		     dev->iobase + ME4000_DIO_PORT_1_REG);
		FUNC2((s->state >> 16) & 0xFF,
		     dev->iobase + ME4000_DIO_PORT_2_REG);
		FUNC2((s->state >> 24) & 0xFF,
		     dev->iobase + ME4000_DIO_PORT_3_REG);
	}

	data[1] = ((FUNC1(dev->iobase + ME4000_DIO_PORT_0_REG) & 0xFF) << 0) |
		  ((FUNC1(dev->iobase + ME4000_DIO_PORT_1_REG) & 0xFF) << 8) |
		  ((FUNC1(dev->iobase + ME4000_DIO_PORT_2_REG) & 0xFF) << 16) |
		  ((FUNC1(dev->iobase + ME4000_DIO_PORT_3_REG) & 0xFF) << 24);

	return insn->n;
}