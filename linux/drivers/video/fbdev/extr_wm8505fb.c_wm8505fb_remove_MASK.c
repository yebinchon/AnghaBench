#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_3__ {TYPE_2__ cmap; } ;
struct wm8505fb_info {TYPE_1__ fb; int /*<<< orphan*/  regbase; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct wm8505fb_info* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct wm8505fb_info *fbi = FUNC1(pdev);

	FUNC2(&fbi->fb);

	FUNC3(0, fbi->regbase);

	if (fbi->fb.cmap.len)
		FUNC0(&fbi->fb.cmap);

	return 0;
}