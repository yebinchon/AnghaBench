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
struct thermal_zone_device {int /*<<< orphan*/  device; struct dove_thermal_priv* devdata; } ;
struct dove_thermal_priv {scalar_t__ sensor; scalar_t__ control; } ;

/* Variables and functions */
 unsigned long DOVE_THERMAL_TEMP_MASK ; 
 unsigned long DOVE_THERMAL_TEMP_OFFSET ; 
 int EIO ; 
 unsigned long PMU_TDC1_TEMP_VALID_MASK ; 
 scalar_t__ PMU_TEMP_DIOD_CTRL1_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct thermal_zone_device *thermal,
			  int *temp)
{
	unsigned long reg;
	struct dove_thermal_priv *priv = thermal->devdata;

	/* Valid check */
	reg = FUNC1(priv->control + PMU_TEMP_DIOD_CTRL1_REG);
	if ((reg & PMU_TDC1_TEMP_VALID_MASK) == 0x0) {
		FUNC0(&thermal->device,
			"Temperature sensor reading not valid\n");
		return -EIO;
	}

	/*
	 * Calculate temperature. According to Marvell internal
	 * documentation the formula for this is:
	 * Celsius = (322-reg)/1.3625
	 */
	reg = FUNC1(priv->sensor);
	reg = (reg >> DOVE_THERMAL_TEMP_OFFSET) & DOVE_THERMAL_TEMP_MASK;
	*temp = ((3220000000UL - (10000000UL * reg)) / 13625);

	return 0;
}