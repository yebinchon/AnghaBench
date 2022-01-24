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
struct labpc_private {int cmd5; int /*<<< orphan*/  (* write_byte ) (struct comedi_device*,int,int /*<<< orphan*/ ) ;} ;
struct comedi_device {struct labpc_private* private; } ;

/* Variables and functions */
 int CMD5_EEPROMCS ; 
 int /*<<< orphan*/  CMD5_REG ; 
 int CMD5_WRTPRT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct comedi_device *dev,
			       unsigned int address, unsigned int value)
{
	struct labpc_private *devpriv = dev->private;
	const int write_enable_instruction = 0x6;
	const int write_instruction = 0x2;
	const int write_length = 8;	/*  8 bit write lengths to eeprom */

	/*  enable read/write to eeprom */
	devpriv->cmd5 &= ~CMD5_EEPROMCS;
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
	devpriv->cmd5 |= (CMD5_EEPROMCS | CMD5_WRTPRT);
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

	/*  send write_enable instruction */
	FUNC0(dev, write_enable_instruction, write_length);
	devpriv->cmd5 &= ~CMD5_EEPROMCS;
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

	/*  send write instruction */
	devpriv->cmd5 |= CMD5_EEPROMCS;
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
	FUNC0(dev, write_instruction, write_length);
	/*  send 8 bit address to write to */
	FUNC0(dev, address, write_length);
	/*  write value */
	FUNC0(dev, value, write_length);
	devpriv->cmd5 &= ~CMD5_EEPROMCS;
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);

	/*  disable read/write to eeprom */
	devpriv->cmd5 &= ~(CMD5_EEPROMCS | CMD5_WRTPRT);
	FUNC7(1);
	devpriv->write_byte(dev, devpriv->cmd5, CMD5_REG);
}