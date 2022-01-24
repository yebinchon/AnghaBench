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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 int MSIC_DIE_SENSOR_CODE ; 
 int SKIN_SENSOR0_CODE ; 
 int SKIN_SENSOR1_CODE ; 
 int SYS_SENSOR_CODE ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(u16 base_addr)
{
	int ret;

	/* Enable all the sensor channels */
	ret = FUNC1(base_addr, SKIN_SENSOR0_CODE);
	if (ret)
		return ret;

	ret = FUNC1(base_addr + 1, SKIN_SENSOR1_CODE);
	if (ret)
		return ret;

	ret = FUNC1(base_addr + 2, SYS_SENSOR_CODE);
	if (ret)
		return ret;

	/* Since this is the last channel, set the stop bit
	 * to 1 by ORing the DIE_SENSOR_CODE with 0x10 */
	ret = FUNC1(base_addr + 3,
			(MSIC_DIE_SENSOR_CODE | 0x10));
	if (ret)
		return ret;

	/* Enable ADC and start it */
	return FUNC0(1);
}