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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* backlight ; 
 void* bpp ; 
 int flatpanel ; 
 int forceCRTC ; 
 int /*<<< orphan*/  fpdither ; 
 int hwcur ; 
 char* mode_option ; 
 int noaccel ; 
 int nomtrr ; 
 int noscale ; 
 void* paneltweak ; 
 int reverse_i2c ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char**,char*) ; 
 void* vram ; 

__attribute__((used)) static int FUNC6(char *options)
{
	char *this_opt;

	FUNC0();
	if (!options || !*options)
		return 0;

	while ((this_opt = FUNC5(&options, ",")) != NULL) {
		if (!FUNC4(this_opt, "forceCRTC", 9)) {
			char *p;

			p = this_opt + 9;
			if (!*p || !*(++p))
				continue;
			forceCRTC = *p - '0';
			if (forceCRTC < 0 || forceCRTC > 1)
				forceCRTC = -1;
		} else if (!FUNC4(this_opt, "flatpanel", 9)) {
			flatpanel = 1;
		} else if (!FUNC4(this_opt, "hwcur", 5)) {
			hwcur = 1;
		} else if (!FUNC4(this_opt, "noaccel", 6)) {
			noaccel = 1;
		} else if (!FUNC4(this_opt, "noscale", 7)) {
			noscale = 1;
		} else if (!FUNC4(this_opt, "reverse_i2c", 11)) {
			reverse_i2c = 1;
		} else if (!FUNC4(this_opt, "paneltweak:", 11)) {
			paneltweak = FUNC3(this_opt+11, NULL, 0);
		} else if (!FUNC4(this_opt, "vram:", 5)) {
			vram = FUNC3(this_opt+5, NULL, 0);
		} else if (!FUNC4(this_opt, "backlight:", 10)) {
			backlight = FUNC3(this_opt+10, NULL, 0);
		} else if (!FUNC4(this_opt, "nomtrr", 6)) {
			nomtrr = true;
		} else if (!FUNC4(this_opt, "fpdither:", 9)) {
			fpdither = FUNC2(this_opt+9, NULL, 0);
		} else if (!FUNC4(this_opt, "bpp:", 4)) {
			bpp = FUNC3(this_opt+4, NULL, 0);
		} else
			mode_option = this_opt;
	}
	FUNC1();
	return 0;
}