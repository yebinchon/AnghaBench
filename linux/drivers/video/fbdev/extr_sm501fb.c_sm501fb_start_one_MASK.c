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
struct sm501fb_info {int /*<<< orphan*/  dev; struct fb_info** fb; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  node; int /*<<< orphan*/  mm_lock; } ;
typedef  enum sm501_controller { ____Placeholder_sm501_controller } sm501_controller ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct sm501fb_info*,int) ; 
 int FUNC5 (struct fb_info*,int,char const*) ; 

__attribute__((used)) static int FUNC6(struct sm501fb_info *info,
			     enum sm501_controller head, const char *drvname)
{
	struct fb_info *fbi = info->fb[head];
	int ret;

	if (!fbi)
		return 0;

	FUNC2(&info->fb[head]->mm_lock);

	ret = FUNC5(info->fb[head], head, drvname);
	if (ret) {
		FUNC0(info->dev, "cannot initialise fb %s\n", drvname);
		return ret;
	}

	ret = FUNC3(info->fb[head]);
	if (ret) {
		FUNC0(info->dev, "failed to register fb %s\n", drvname);
		FUNC4(info, head);
		return ret;
	}

	FUNC1(info->dev, "fb%d: %s frame buffer\n", fbi->node, fbi->fix.id);

	return 0;
}