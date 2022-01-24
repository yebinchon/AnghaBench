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
typedef  int /*<<< orphan*/  u32 ;
struct bcm2835_power_domain {struct bcm2835_power* power; } ;
struct bcm2835_power {int dummy; } ;

/* Variables and functions */
 int PM_ISFUNC ; 
 int PM_ISPOW ; 
 int PM_POWUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bcm2835_power_domain *pd, u32 pm_reg)
{
	struct bcm2835_power *power = pd->power;

	/* Enable functional isolation */
	FUNC1(pm_reg, FUNC0(pm_reg) & ~PM_ISFUNC);

	/* Enable electrical isolation */
	FUNC1(pm_reg, FUNC0(pm_reg) & ~PM_ISPOW);

	/* Open the power switches. */
	FUNC1(pm_reg, FUNC0(pm_reg) & ~PM_POWUP);

	return 0;
}