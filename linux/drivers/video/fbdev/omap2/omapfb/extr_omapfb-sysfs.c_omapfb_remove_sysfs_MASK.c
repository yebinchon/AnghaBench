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
struct omapfb2_device {int num_fbs; TYPE_1__** fbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * omapfb_attrs ; 

void FUNC3(struct omapfb2_device *fbdev)
{
	int i, t;

	FUNC1("remove sysfs for fbs\n");
	for (i = 0; i < fbdev->num_fbs; i++) {
		for (t = 0; t < FUNC0(omapfb_attrs); t++)
			FUNC2(fbdev->fbs[i]->dev,
					&omapfb_attrs[t]);
	}
}