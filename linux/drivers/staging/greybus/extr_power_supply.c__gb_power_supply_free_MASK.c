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
struct gb_power_supply {int /*<<< orphan*/  props; int /*<<< orphan*/  props_raw; int /*<<< orphan*/  manufacturer; int /*<<< orphan*/  model_name; int /*<<< orphan*/  serial_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct gb_power_supply *gbpsy)
{
	FUNC0(gbpsy->serial_number);
	FUNC0(gbpsy->model_name);
	FUNC0(gbpsy->manufacturer);
	FUNC0(gbpsy->props_raw);
	FUNC0(gbpsy->props);
}