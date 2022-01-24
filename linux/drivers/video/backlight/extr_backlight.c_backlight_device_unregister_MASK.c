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
struct backlight_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  ops_lock; int /*<<< orphan*/ * ops; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_UNREGISTERED ; 
 int /*<<< orphan*/  backlight_dev_list_mutex ; 
 int /*<<< orphan*/  backlight_notifier ; 
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct backlight_device* pmac_backlight ; 
 int /*<<< orphan*/  pmac_backlight_mutex ; 

void FUNC6(struct backlight_device *bd)
{
	if (!bd)
		return;

	FUNC4(&backlight_dev_list_mutex);
	FUNC3(&bd->entry);
	FUNC5(&backlight_dev_list_mutex);

#ifdef CONFIG_PMAC_BACKLIGHT
	mutex_lock(&pmac_backlight_mutex);
	if (pmac_backlight == bd)
		pmac_backlight = NULL;
	mutex_unlock(&pmac_backlight_mutex);
#endif

	FUNC1(&backlight_notifier,
				     BACKLIGHT_UNREGISTERED, bd);

	FUNC4(&bd->ops_lock);
	bd->ops = NULL;
	FUNC5(&bd->ops_lock);

	FUNC0(bd);
	FUNC2(&bd->dev);
}