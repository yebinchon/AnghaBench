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
typedef  enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
typedef  enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;

/* Variables and functions */
 int VGA_SWITCHEROO_IGD ; 
 int /*<<< orphan*/  apple_gmux_data ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(enum vga_switcheroo_client_id id,
				enum vga_switcheroo_state state)
{
	if (id == VGA_SWITCHEROO_IGD)
		return 0;

	return FUNC0(apple_gmux_data, state);
}