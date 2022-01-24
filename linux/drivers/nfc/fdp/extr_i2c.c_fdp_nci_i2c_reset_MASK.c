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
struct fdp_i2c_phy {int /*<<< orphan*/  power_gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDP_POWER_OFF ; 
 int /*<<< orphan*/  FDP_POWER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct fdp_i2c_phy *phy)
{
	/* Reset RST/WakeUP for at least 100 micro-second */
	FUNC0(phy->power_gpio, FDP_POWER_OFF);
	FUNC1(1000, 4000);
	FUNC0(phy->power_gpio, FDP_POWER_ON);
	FUNC1(10000, 14000);
}