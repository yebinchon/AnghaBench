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
struct das08_board_struct {scalar_t__ is_jr; } ;
struct comedi_device {scalar_t__ iobase; struct das08_board_struct* board_ptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ DAS08AOX_AO_UPDATE_REG ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 scalar_t__ DAS08JR_AO_UPDATE_REG ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct comedi_device *dev,
			      unsigned int chan, unsigned int data)
{
	const struct das08_board_struct *board = dev->board_ptr;
	unsigned char lsb;
	unsigned char msb;

	lsb = data & 0xff;
	msb = (data >> 8) & 0xff;
	if (board->is_jr) {
		FUNC5(lsb, dev->iobase + FUNC2(chan));
		FUNC5(msb, dev->iobase + FUNC3(chan));
		/* load DACs */
		FUNC4(dev->iobase + DAS08JR_AO_UPDATE_REG);
	} else {
		FUNC5(lsb, dev->iobase + FUNC0(chan));
		FUNC5(msb, dev->iobase + FUNC1(chan));
		/* load DACs */
		FUNC4(dev->iobase + DAS08AOX_AO_UPDATE_REG);
	}
}