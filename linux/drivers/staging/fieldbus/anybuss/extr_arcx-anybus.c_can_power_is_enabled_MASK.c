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
struct regulator_dev {int dummy; } ;
struct controller_priv {scalar_t__ cpld_base; } ;

/* Variables and functions */
 scalar_t__ CPLD_STATUS1 ; 
 int CPLD_STATUS1_CAN_POWER ; 
 struct controller_priv* FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev)
{
	struct controller_priv *cd = FUNC0(rdev);

	return !(FUNC1(cd->cpld_base + CPLD_STATUS1) & CPLD_STATUS1_CAN_POWER);
}