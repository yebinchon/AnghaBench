#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_3__ {int switch_state_ddc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GMUX_PORT_SWITCH_DDC ; 
 int VGA_SWITCHEROO_IGD ; 
 TYPE_1__* apple_gmux_data ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 

__attribute__((used)) static int FUNC2(enum vga_switcheroo_client_id id)
{
	enum vga_switcheroo_client_id old_ddc_owner =
		apple_gmux_data->switch_state_ddc;

	if (id == old_ddc_owner)
		return id;

	FUNC1("Switching DDC from %d to %d\n", old_ddc_owner, id);
	apple_gmux_data->switch_state_ddc = id;

	if (id == VGA_SWITCHEROO_IGD)
		FUNC0(apple_gmux_data, GMUX_PORT_SWITCH_DDC, 1);
	else
		FUNC0(apple_gmux_data, GMUX_PORT_SWITCH_DDC, 2);

	return old_ddc_owner;
}