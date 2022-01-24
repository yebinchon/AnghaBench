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

/* Variables and functions */
 int /*<<< orphan*/  MSI_EC_COMMAND_LCD_LEVEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int,int*,int) ; 

__attribute__((used)) static int FUNC1(int enable)
{
	u8 wdata[2], rdata;
	int result;

	wdata[0] = 4;

	result = FUNC0(MSI_EC_COMMAND_LCD_LEVEL, wdata, 1,
				&rdata, 1);
	if (result < 0)
		return result;

	wdata[0] = 0x84;
	wdata[1] = (rdata & 0xF7) | (enable ? 8 : 0);

	return FUNC0(MSI_EC_COMMAND_LCD_LEVEL, wdata, 2,
			      NULL, 0);
}