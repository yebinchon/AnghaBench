#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xenfb_info {int /*<<< orphan*/  fb; int /*<<< orphan*/  gfns; scalar_t__ page; TYPE_1__* fb_info; } ;
struct xenbus_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmap; } ;

/* Variables and functions */
 struct xenfb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct xenfb_info*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xenfb_info*) ; 

__attribute__((used)) static int FUNC9(struct xenbus_device *dev)
{
	struct xenfb_info *info = FUNC0(&dev->dev);

	FUNC8(info);
	if (info->fb_info) {
		FUNC2(info->fb_info);
		FUNC6(info->fb_info);
		FUNC1(&info->fb_info->cmap);
		FUNC3(info->fb_info);
	}
	FUNC4((unsigned long)info->page);
	FUNC7(info->gfns);
	FUNC7(info->fb);
	FUNC5(info);

	return 0;
}