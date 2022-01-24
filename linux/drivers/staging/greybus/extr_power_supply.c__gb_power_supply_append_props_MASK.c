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
struct gb_power_supply {int /*<<< orphan*/  serial_number; int /*<<< orphan*/  model_name; int /*<<< orphan*/  manufacturer; } ;

/* Variables and functions */
 int /*<<< orphan*/  POWER_SUPPLY_PROP_MANUFACTURER ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_MODEL_NAME ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_SERIAL_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (struct gb_power_supply*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gb_power_supply *gbpsy)
{
	if (FUNC1(gbpsy->manufacturer))
		FUNC0(gbpsy, POWER_SUPPLY_PROP_MANUFACTURER);
	if (FUNC1(gbpsy->model_name))
		FUNC0(gbpsy, POWER_SUPPLY_PROP_MODEL_NAME);
	if (FUNC1(gbpsy->serial_number))
		FUNC0(gbpsy, POWER_SUPPLY_PROP_SERIAL_NUMBER);
}