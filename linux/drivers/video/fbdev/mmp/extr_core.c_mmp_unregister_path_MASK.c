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
struct mmp_path {int overlay_num; int /*<<< orphan*/  access_ok; TYPE_1__* overlays; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  access_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  disp_lock ; 
 int /*<<< orphan*/  FUNC0 (struct mmp_path*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mmp_path *path)
{
	int i;

	if (!path)
		return;

	FUNC3(&disp_lock);
	/* del from pathlist */
	FUNC1(&path->node);

	/* deinit overlays */
	for (i = 0; i < path->overlay_num; i++)
		FUNC2(&path->overlays[i].access_ok);

	FUNC2(&path->access_ok);

	FUNC0(path);
	FUNC4(&disp_lock);
}