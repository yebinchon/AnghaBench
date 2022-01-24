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
struct au1100fb_device {int panel_idx; TYPE_1__* panel; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char**) ; 
 TYPE_1__* known_lcd_panels ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char**,char*) ; 

__attribute__((used)) static int FUNC8(struct au1100fb_device *fbdev)
{
	char *this_opt, *options;
	int num_panels = FUNC0(known_lcd_panels);

	if (num_panels <= 0) {
		FUNC2("No LCD panels supported by driver!");
		return -ENODEV;
	}

	if (FUNC1(DRIVER_NAME, &options))
		return -ENODEV;
	if (!options)
		return -ENODEV;

	while ((this_opt = FUNC7(&options, ",")) != NULL) {
		/* Panel option */
		if (!FUNC6(this_opt, "panel:", 6)) {
			int i;
			this_opt += 6;
			for (i = 0; i < num_panels; i++) {
				if (!FUNC6(this_opt, known_lcd_panels[i].name,
					     FUNC5(this_opt))) {
					fbdev->panel = &known_lcd_panels[i];
					fbdev->panel_idx = i;
					break;
				}
			}
			if (i >= num_panels) {
				FUNC4("Panel '%s' not supported!", this_opt);
				return -ENODEV;
			}
		}
		/* Unsupported option */
		else
			FUNC4("Unsupported option \"%s\"", this_opt);
	}

	FUNC3("Panel=%s", fbdev->panel->name);

	return 0;
}