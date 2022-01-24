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
 scalar_t__ blank ; 
 void* maxclk ; 
 void* maxhf ; 
 void* maxvf ; 
 char* mode_option ; 
 int mtrr ; 
 int nocrtc ; 
 int noedid ; 
 int pmi_setpal ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 
 void* vbemode ; 
 void* vram_remap ; 
 void* vram_total ; 
 int ypan ; 

__attribute__((used)) static int FUNC5(char *options)
{
	char *this_opt;

	if (!options || !*options)
		return 0;

	while ((this_opt = FUNC4(&options, ",")) != NULL) {
		if (!*this_opt) continue;

		if (!FUNC2(this_opt, "redraw"))
			ypan = 0;
		else if (!FUNC2(this_opt, "ypan"))
			ypan = 1;
		else if (!FUNC2(this_opt, "ywrap"))
			ypan = 2;
		else if (!FUNC2(this_opt, "vgapal"))
			pmi_setpal = 0;
		else if (!FUNC2(this_opt, "pmipal"))
			pmi_setpal = 1;
		else if (!FUNC3(this_opt, "mtrr:", 5))
			mtrr = FUNC1(this_opt+5, NULL, 0);
		else if (!FUNC2(this_opt, "nomtrr"))
			mtrr = 0;
		else if (!FUNC2(this_opt, "nocrtc"))
			nocrtc = 1;
		else if (!FUNC2(this_opt, "noedid"))
			noedid = 1;
		else if (!FUNC2(this_opt, "noblank"))
			blank = 0;
		else if (!FUNC3(this_opt, "vtotal:", 7))
			vram_total = FUNC1(this_opt + 7, NULL, 0);
		else if (!FUNC3(this_opt, "vremap:", 7))
			vram_remap = FUNC1(this_opt + 7, NULL, 0);
		else if (!FUNC3(this_opt, "maxhf:", 6))
			maxhf = FUNC1(this_opt + 6, NULL, 0);
		else if (!FUNC3(this_opt, "maxvf:", 6))
			maxvf = FUNC1(this_opt + 6, NULL, 0);
		else if (!FUNC3(this_opt, "maxclk:", 7))
			maxclk = FUNC1(this_opt + 7, NULL, 0);
		else if (!FUNC3(this_opt, "vbemode:", 8))
			vbemode = FUNC1(this_opt + 8, NULL, 0);
		else if (this_opt[0] >= '0' && this_opt[0] <= '9') {
			mode_option = this_opt;
		} else {
			FUNC0("unrecognized option %s\n", this_opt);
		}
	}

	if (mtrr != 3 && mtrr != 0)
		FUNC0("uvesafb: mtrr should be set to 0 or 3; %d is unsupported", mtrr);

	return 0;
}