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
struct ni_private {int* caldacs; } ;
struct ni_board_struct {int* caldac; } ;
struct comedi_device {struct ni_private* private; struct ni_board_struct* board_ptr; } ;
struct TYPE_2__ {int n_chans; unsigned int (* packbits ) (int,int,unsigned int*) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  NI_E_SERIAL_CMD_REG ; 
 unsigned int NI_E_SERIAL_CMD_SCLK ; 
 unsigned int NI_E_SERIAL_CMD_SDATA ; 
 int caldac_none ; 
 TYPE_1__* caldacs ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, int addr, int val)
{
	const struct ni_board_struct *board = dev->board_ptr;
	struct ni_private *devpriv = dev->private;
	unsigned int loadbit = 0, bits = 0, bit, bitstring = 0;
	unsigned int cmd;
	int i;
	int type;

	if (devpriv->caldacs[addr] == val)
		return;
	devpriv->caldacs[addr] = val;

	for (i = 0; i < 3; i++) {
		type = board->caldac[i];
		if (type == caldac_none)
			break;
		if (addr < caldacs[type].n_chans) {
			bits = caldacs[type].packbits(addr, val, &bitstring);
			loadbit = FUNC0(i);
			break;
		}
		addr -= caldacs[type].n_chans;
	}

	/* bits will be 0 if there is no caldac for the given addr */
	if (bits == 0)
		return;

	for (bit = 1 << (bits - 1); bit; bit >>= 1) {
		cmd = (bit & bitstring) ? NI_E_SERIAL_CMD_SDATA : 0;
		FUNC1(dev, cmd, NI_E_SERIAL_CMD_REG);
		FUNC3(1);
		FUNC1(dev, NI_E_SERIAL_CMD_SCLK | cmd, NI_E_SERIAL_CMD_REG);
		FUNC3(1);
	}
	FUNC1(dev, loadbit, NI_E_SERIAL_CMD_REG);
	FUNC3(1);
	FUNC1(dev, 0, NI_E_SERIAL_CMD_REG);
}