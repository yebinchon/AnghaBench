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
struct apple_gmux_data {int power_state; scalar_t__ gpe; int /*<<< orphan*/  powerchange_done; } ;
typedef  enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;

/* Variables and functions */
 int /*<<< orphan*/  GMUX_PORT_DISCRETE_POWER ; 
 int VGA_SWITCHEROO_ON ; 
 int /*<<< orphan*/  FUNC0 (struct apple_gmux_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct apple_gmux_data *gmux_data,
				   enum vga_switcheroo_state state)
{
	FUNC4(&gmux_data->powerchange_done);

	if (state == VGA_SWITCHEROO_ON) {
		FUNC0(gmux_data, GMUX_PORT_DISCRETE_POWER, 1);
		FUNC0(gmux_data, GMUX_PORT_DISCRETE_POWER, 3);
		FUNC2("Discrete card powered up\n");
	} else {
		FUNC0(gmux_data, GMUX_PORT_DISCRETE_POWER, 1);
		FUNC0(gmux_data, GMUX_PORT_DISCRETE_POWER, 0);
		FUNC2("Discrete card powered down\n");
	}

	gmux_data->power_state = state;

	if (gmux_data->gpe >= 0 &&
	    !FUNC5(&gmux_data->powerchange_done,
						       FUNC1(200)))
		FUNC3("Timeout waiting for gmux switch to complete\n");

	return 0;
}