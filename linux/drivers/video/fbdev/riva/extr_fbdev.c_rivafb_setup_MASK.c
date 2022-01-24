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
 int /*<<< orphan*/  backlight ; 
 int flatpanel ; 
 int forceCRTC ; 
 char* mode_option ; 
 int noaccel ; 
 int nomtrr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int strictmode ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static int FUNC5(char *options)
{
	char *this_opt;

	FUNC0();
	if (!options || !*options)
		return 0;

	while ((this_opt = FUNC4(&options, ",")) != NULL) {
		if (!FUNC3(this_opt, "forceCRTC", 9)) {
			char *p;
			
			p = this_opt + 9;
			if (!*p || !*(++p)) continue; 
			forceCRTC = *p - '0';
			if (forceCRTC < 0 || forceCRTC > 1) 
				forceCRTC = -1;
		} else if (!FUNC3(this_opt, "flatpanel", 9)) {
			flatpanel = 1;
		} else if (!FUNC3(this_opt, "backlight:", 10)) {
			backlight = FUNC2(this_opt+10, NULL, 0);
		} else if (!FUNC3(this_opt, "nomtrr", 6)) {
			nomtrr = 1;
		} else if (!FUNC3(this_opt, "strictmode", 10)) {
			strictmode = 1;
		} else if (!FUNC3(this_opt, "noaccel", 7)) {
			noaccel = 1;
		} else
			mode_option = this_opt;
	}
	FUNC1();
	return 0;
}