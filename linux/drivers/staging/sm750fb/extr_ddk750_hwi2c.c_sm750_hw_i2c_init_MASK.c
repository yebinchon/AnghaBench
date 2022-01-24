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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MUX ; 
 unsigned int GPIO_MUX_30 ; 
 unsigned int GPIO_MUX_31 ; 
 int /*<<< orphan*/  I2C_CTRL ; 
 unsigned int I2C_CTRL_EN ; 
 unsigned int I2C_CTRL_MODE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(unsigned char bus_speed_mode)
{
	unsigned int value;

	/* Enable GPIO 30 & 31 as IIC clock & data */
	value = FUNC0(GPIO_MUX);

	value |= (GPIO_MUX_30 | GPIO_MUX_31);
	FUNC1(GPIO_MUX, value);

	/*
	 * Enable Hardware I2C power.
	 * TODO: Check if we need to enable GPIO power?
	 */
	FUNC2(1);

	/* Enable the I2C Controller and set the bus speed mode */
	value = FUNC0(I2C_CTRL) & ~(I2C_CTRL_MODE | I2C_CTRL_EN);
	if (bus_speed_mode)
		value |= I2C_CTRL_MODE;
	value |= I2C_CTRL_EN;
	FUNC1(I2C_CTRL, value);

	return 0;
}