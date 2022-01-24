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
struct stm_thermal_sensor {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ DTS_CFGR1_OFFSET ; 
 scalar_t__ DTS_SR_OFFSET ; 
 int /*<<< orphan*/  POLL_TIMEOUT ; 
 int /*<<< orphan*/  STARTUP_TIME ; 
 int TS1_EN ; 
 int TS1_START ; 
 int TS_RDY ; 
 int FUNC0 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct stm_thermal_sensor *sensor)
{
	u32 value;

	/* Stop measuring */
	value = FUNC1(sensor->base + DTS_CFGR1_OFFSET);
	value &= ~TS1_START;
	FUNC3(value, sensor->base + DTS_CFGR1_OFFSET);

	/* Ensure stop is taken into account */
	FUNC2(STARTUP_TIME, POLL_TIMEOUT);

	/* Disable sensor */
	value = FUNC1(sensor->base + DTS_CFGR1_OFFSET);
	value &= ~TS1_EN;
	FUNC3(value, sensor->base + DTS_CFGR1_OFFSET);

	/* Ensure disable is taken into account */
	return FUNC0(sensor->base + DTS_SR_OFFSET, value,
				  !(value & TS_RDY),
				  STARTUP_TIME, POLL_TIMEOUT);
}