#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct omapfb2_device {int num_fbs; int /*<<< orphan*/  dev; TYPE_1__** fbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * omapfb_attrs ; 

int FUNC4(struct omapfb2_device *fbdev)
{
	int i;
	int r;

	FUNC1("create sysfs for fbs\n");
	for (i = 0; i < fbdev->num_fbs; i++) {
		int t;
		for (t = 0; t < FUNC0(omapfb_attrs); t++) {
			r = FUNC3(fbdev->fbs[i]->dev,
					&omapfb_attrs[t]);

			if (r) {
				FUNC2(fbdev->dev, "failed to create sysfs "
						"file\n");
				return r;
			}
		}
	}

	return 0;
}