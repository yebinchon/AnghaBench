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
typedef  int u8 ;
struct s626_private {int i2c_adrs; } ;
struct comedi_device {scalar_t__ mmio; struct s626_private* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  S626_I2C_ATTRNOP ; 
 int /*<<< orphan*/  S626_I2C_ATTRSTART ; 
 int /*<<< orphan*/  S626_I2C_ATTRSTOP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ S626_P_I2CCTRL ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (struct comedi_device*,int) ; 

__attribute__((used)) static u8 FUNC5(struct comedi_device *dev, u8 addr)
{
	struct s626_private *devpriv = dev->private;

	/*
	 * Send EEPROM target address:
	 *  Byte2 = I2C command: write to I2C EEPROM device.
	 *  Byte1 = EEPROM internal target address.
	 *  Byte0 = Not sent.
	 */
	if (FUNC4(dev, FUNC2(S626_I2C_ATTRSTART,
						devpriv->i2c_adrs) |
				    FUNC1(S626_I2C_ATTRSTOP, addr) |
				    FUNC0(S626_I2C_ATTRNOP, 0)))
		/* Abort function and declare error if handshake failed. */
		return 0;

	/*
	 * Execute EEPROM read:
	 *  Byte2 = I2C command: read from I2C EEPROM device.
	 *  Byte1 receives uint8_t from EEPROM.
	 *  Byte0 = Not sent.
	 */
	if (FUNC4(dev, FUNC2(S626_I2C_ATTRSTART,
						(devpriv->i2c_adrs | 1)) |
				    FUNC1(S626_I2C_ATTRSTOP, 0) |
				    FUNC0(S626_I2C_ATTRNOP, 0)))
		/* Abort function and declare error if handshake failed. */
		return 0;

	return (FUNC3(dev->mmio + S626_P_I2CCTRL) >> 16) & 0xff;
}