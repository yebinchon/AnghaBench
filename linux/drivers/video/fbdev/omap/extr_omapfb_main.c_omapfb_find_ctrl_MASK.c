#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ctrl_name; } ;
struct omapfb_platform_data {TYPE_1__ lcd; } ;
struct omapfb_device {int /*<<< orphan*/  dev; TYPE_2__* ctrl; TYPE_2__* int_ctrl; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__**) ; 
 TYPE_2__** ctrls ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 struct omapfb_platform_data* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct omapfb_device *fbdev)
{
	struct omapfb_platform_data *conf;
	char name[17];
	int i;

	conf = FUNC2(fbdev->dev);

	fbdev->ctrl = NULL;

	FUNC4(name, conf->lcd.ctrl_name, sizeof(name) - 1);
	name[sizeof(name) - 1] = '\0';

	if (FUNC3(name, "internal") == 0) {
		fbdev->ctrl = fbdev->int_ctrl;
		return 0;
	}

	for (i = 0; i < FUNC0(ctrls); i++) {
		FUNC1(fbdev->dev, "ctrl %s\n", ctrls[i]->name);
		if (FUNC3(ctrls[i]->name, name) == 0) {
			fbdev->ctrl = ctrls[i];
			break;
		}
	}

	if (fbdev->ctrl == NULL) {
		FUNC1(fbdev->dev, "ctrl %s not supported\n", name);
		return -1;
	}

	return 0;
}