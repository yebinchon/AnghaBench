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
typedef  int u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct ufx_data*,int,int,int) ; 
 int FUNC2 (struct ufx_data*,int,int*) ; 
 int FUNC3 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC4(struct ufx_data *dev)
{
	u32 tmp;

	/* disable the controller before it can be reprogrammed */
	int status = FUNC3(dev, 0x106C, 0x00);
	FUNC0(status, "failed to disable I2C");

	/* Setup the clock count registers
	 * (12+1) = 13 clks @ 2.5 MHz = 5.2 uS */
	status = FUNC3(dev, 0x1018, 12);
	FUNC0(status, "error writing 0x1018");

	/* (6+8) = 14 clks @ 2.5 MHz = 5.6 uS */
	status = FUNC3(dev, 0x1014, 6);
	FUNC0(status, "error writing 0x1014");

	status = FUNC2(dev, 0x1000, &tmp);
	FUNC0(status, "error reading 0x1000");

	/* set speed to std mode */
	tmp &= ~(0x06);
	tmp |= 0x02;

	/* 7-bit (not 10-bit) addressing */
	tmp &= ~(0x10);

	/* enable restart conditions and master mode */
	tmp |= 0x21;

	status = FUNC3(dev, 0x1000, tmp);
	FUNC0(status, "error writing 0x1000");

	/* Set normal tx using target address 0 */
	status = FUNC1(dev, 0x1004, 0xC00, 0x000);
	FUNC0(status, "error setting TX mode bits in 0x1004");

	/* Enable the controller */
	status = FUNC3(dev, 0x106C, 0x01);
	FUNC0(status, "failed to enable I2C");

	return 0;
}