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
struct gb_lights {int lights_count; int /*<<< orphan*/  lights_lock; struct gb_lights* lights; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_lights*) ; 
 int /*<<< orphan*/  FUNC1 (struct gb_lights*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct gb_lights *glights)
{
	int i;

	if (!glights)
		return;

	FUNC3(&glights->lights_lock);
	if (!glights->lights)
		goto free_glights;

	for (i = 0; i < glights->lights_count; i++)
		FUNC0(&glights->lights[i]);

	FUNC1(glights->lights);

free_glights:
	FUNC4(&glights->lights_lock);
	FUNC2(&glights->lights_lock);
	FUNC1(glights);
}