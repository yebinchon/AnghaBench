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

/* Variables and functions */
 int CONFIG_FB_GBE_MEM ; 
 int TILE_SIZE ; 
 int /*<<< orphan*/ * default_mode ; 
 int /*<<< orphan*/  default_mode_CRT ; 
 int /*<<< orphan*/  default_mode_LCD ; 
 int /*<<< orphan*/ * default_var ; 
 int /*<<< orphan*/  default_var_CRT ; 
 int /*<<< orphan*/  default_var_LCD ; 
 int flat_panel_enabled ; 
 int gbe_mem_size ; 
 int FUNC0 (char*,char**) ; 
 char* mode_option ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int FUNC3(char *options)
{
	char *this_opt;

	if (!options || !*options)
		return 0;

	while ((this_opt = FUNC2(&options, ",")) != NULL) {
		if (!FUNC1(this_opt, "monitor:", 8)) {
			if (!FUNC1(this_opt + 8, "crt", 3)) {
				flat_panel_enabled = 0;
				default_var = &default_var_CRT;
				default_mode = &default_mode_CRT;
			} else if (!FUNC1(this_opt + 8, "1600sw", 6) ||
				   !FUNC1(this_opt + 8, "lcd", 3)) {
				flat_panel_enabled = 1;
				default_var = &default_var_LCD;
				default_mode = &default_mode_LCD;
			}
		} else if (!FUNC1(this_opt, "mem:", 4)) {
			gbe_mem_size = FUNC0(this_opt + 4, &this_opt);
			if (gbe_mem_size > CONFIG_FB_GBE_MEM * 1024 * 1024)
				gbe_mem_size = CONFIG_FB_GBE_MEM * 1024 * 1024;
			if (gbe_mem_size < TILE_SIZE)
				gbe_mem_size = TILE_SIZE;
		} else
			mode_option = this_opt;
	}
	return 0;
}