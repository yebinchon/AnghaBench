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
struct gb_light {int ready; int has_flash; int channels_count; int /*<<< orphan*/ * name; int /*<<< orphan*/ * channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_light*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct gb_light *light)
{
	int i;

	light->ready = false;

	if (light->has_flash)
		FUNC1(light);
	light->has_flash = false;

	for (i = 0; i < light->channels_count; i++)
		FUNC0(&light->channels[i]);
	light->channels_count = 0;

	FUNC2(light->channels);
	light->channels = NULL;
	FUNC2(light->name);
	light->name = NULL;
}