#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ resistor_sense; } ;
struct bq2415x_device {TYPE_1__ init_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ2415X_BOOST_MODE_DISABLE ; 
 int /*<<< orphan*/  BQ2415X_CHARGER_DISABLE ; 
 int /*<<< orphan*/  BQ2415X_CHARGER_ENABLE ; 
 int /*<<< orphan*/  BQ2415X_CHARGE_TERMINATION_DISABLE ; 
 int /*<<< orphan*/  BQ2415X_CHARGE_TERMINATION_ENABLE ; 
 int /*<<< orphan*/  battery_regulation_voltage ; 
 int /*<<< orphan*/  FUNC0 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  charge_current ; 
 int /*<<< orphan*/  current_limit ; 
 int /*<<< orphan*/  termination_current ; 
 int /*<<< orphan*/  weak_battery_voltage ; 

__attribute__((used)) static int FUNC2(struct bq2415x_device *bq)
{
	FUNC0(bq, BQ2415X_BOOST_MODE_DISABLE);
	FUNC0(bq, BQ2415X_CHARGER_DISABLE);
	FUNC0(bq, BQ2415X_CHARGE_TERMINATION_DISABLE);

	FUNC1(bq, current_limit);
	FUNC1(bq, weak_battery_voltage);
	FUNC1(bq, battery_regulation_voltage);

	if (bq->init_data.resistor_sense > 0) {
		FUNC1(bq, charge_current);
		FUNC1(bq, termination_current);
		FUNC0(bq, BQ2415X_CHARGE_TERMINATION_ENABLE);
	}

	FUNC0(bq, BQ2415X_CHARGER_ENABLE);
	return 0;
}