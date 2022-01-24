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
 int clipping ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 void* gfxclk ; 
 void* mem ; 
 char* mode_option ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int slowpci ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 
 int vgapass ; 

__attribute__((used)) static int FUNC5(char *options)
{
	char *this_opt;

	if (!options || !*options)
		return 0;

	while ((this_opt = FUNC4(&options, ",")) != NULL) {
		if (!*this_opt) continue;

		FUNC0("option %s\n", this_opt);

		if (!FUNC2(this_opt, "vganopass"))
			vgapass = 0;
		else if (!FUNC2(this_opt, "vgapass"))
			vgapass = 1;
		else if (!FUNC2(this_opt, "clipping"))
		        clipping = 1;
		else if (!FUNC2(this_opt, "noclipping"))
		        clipping = 0;
		else if (!FUNC2(this_opt, "fastpci"))
		        slowpci = 0;
		else if (!FUNC2(this_opt, "slowpci"))
		        slowpci = 1;
		else if (!FUNC3(this_opt, "mem:",4))
			mem = FUNC1 (this_opt+4, NULL, 0);
		else if (!FUNC3(this_opt, "gfxclk:",7))
			gfxclk = FUNC1 (this_opt+7, NULL, 0);
		else
			mode_option = this_opt;
	}
	return 0;
}