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
struct bbc_i2c_client {unsigned char address; unsigned char bus; struct bbc_i2c_bus* bp; } ;
struct bbc_i2c_bus {int /*<<< orphan*/ * i2c_control_regs; int /*<<< orphan*/ * i2c_bussel_reg; } ;

/* Variables and functions */
 unsigned char I2C_PCF_ENI ; 
 unsigned char I2C_PCF_ESO ; 
 unsigned char I2C_PCF_LRB ; 
 unsigned char I2C_PCF_START ; 
 unsigned char I2C_PCF_STOP ; 
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bbc_i2c_bus*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ *) ; 

int FUNC3(struct bbc_i2c_client *client, unsigned char *byte, int off)
{
	struct bbc_i2c_bus *bp = client->bp;
	unsigned char address = client->address, status;
	int ret = -1;

	if (bp->i2c_bussel_reg != NULL)
		FUNC2(client->bus, bp->i2c_bussel_reg);

	FUNC2(address, bp->i2c_control_regs + 0x1);
	FUNC2(I2C_PCF_START, bp->i2c_control_regs + 0x0);
	if (FUNC1(bp, &status))
		goto out;

	FUNC2(off, bp->i2c_control_regs + 0x1);
	if (FUNC1(bp, &status) ||
	    (status & I2C_PCF_LRB) != 0)
		goto out;

	FUNC2(I2C_PCF_STOP, bp->i2c_control_regs + 0x0);

	address |= 0x1; /* READ */

	FUNC2(address, bp->i2c_control_regs + 0x1);
	FUNC2(I2C_PCF_START, bp->i2c_control_regs + 0x0);
	if (FUNC1(bp, &status))
		goto out;

	/* Set PIN back to one so the device sends the first
	 * byte.
	 */
	(void) FUNC0(bp->i2c_control_regs + 0x1);
	if (FUNC1(bp, &status))
		goto out;

	FUNC2(I2C_PCF_ESO | I2C_PCF_ENI, bp->i2c_control_regs + 0x0);
	*byte = FUNC0(bp->i2c_control_regs + 0x1);
	if (FUNC1(bp, &status))
		goto out;

	ret = 0;

out:
	FUNC2(I2C_PCF_STOP, bp->i2c_control_regs + 0x0);
	(void) FUNC0(bp->i2c_control_regs + 0x1);

	return ret;
}