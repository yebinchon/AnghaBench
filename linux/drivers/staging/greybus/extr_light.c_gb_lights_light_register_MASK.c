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
struct gb_light {int channels_count; int ready; int has_flash; TYPE_1__* channels; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct gb_light*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gb_light *light)
{
	int ret;
	int i;

	/*
	 * Then, if everything went ok in getting configurations, we register
	 * the classdev, flash classdev and v4l2 subsystem, if a flash device is
	 * found.
	 */
	for (i = 0; i < light->channels_count; i++) {
		ret = FUNC0(&light->channels[i]);
		if (ret < 0)
			return ret;

		FUNC2(&light->channels[i].lock);
	}

	light->ready = true;

	if (light->has_flash) {
		ret = FUNC1(light);
		if (ret < 0) {
			light->has_flash = false;
			return ret;
		}
	}

	return 0;
}