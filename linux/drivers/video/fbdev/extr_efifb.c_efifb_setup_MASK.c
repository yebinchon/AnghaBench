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
struct TYPE_3__ {int lfb_base; int lfb_linelength; int lfb_height; int lfb_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFI_MEMORY_WC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  mem_flags ; 
 TYPE_1__ screen_info ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char**,char*) ; 
 int use_bgrt ; 

__attribute__((used)) static int FUNC5(char *options)
{
	char *this_opt;

	if (options && *options) {
		while ((this_opt = FUNC4(&options, ",")) != NULL) {
			if (!*this_opt) continue;

			FUNC0(&screen_info, this_opt);

			if (!FUNC3(this_opt, "base:", 5))
				screen_info.lfb_base = FUNC1(this_opt+5, NULL, 0);
			else if (!FUNC3(this_opt, "stride:", 7))
				screen_info.lfb_linelength = FUNC1(this_opt+7, NULL, 0) * 4;
			else if (!FUNC3(this_opt, "height:", 7))
				screen_info.lfb_height = FUNC1(this_opt+7, NULL, 0);
			else if (!FUNC3(this_opt, "width:", 6))
				screen_info.lfb_width = FUNC1(this_opt+6, NULL, 0);
			else if (!FUNC2(this_opt, "nowc"))
				mem_flags &= ~EFI_MEMORY_WC;
			else if (!FUNC2(this_opt, "nobgrt"))
				use_bgrt = false;
		}
	}

	return 0;
}