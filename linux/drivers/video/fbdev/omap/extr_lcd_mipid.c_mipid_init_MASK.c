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
struct omapfb_device {int dummy; } ;
struct mipid_device {int /*<<< orphan*/  saved_bklight_level; scalar_t__ enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  esd_work; struct omapfb_device* fbdev; } ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mipid_device*) ; 
 int /*<<< orphan*/  mipid_esd_work ; 
 int /*<<< orphan*/  FUNC2 (struct lcd_panel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct mipid_device*) ; 
 struct mipid_device* FUNC5 (struct lcd_panel*) ; 

__attribute__((used)) static int FUNC6(struct lcd_panel *panel,
			    struct omapfb_device *fbdev)
{
	struct mipid_device *md = FUNC5(panel);

	md->fbdev = fbdev;
	FUNC0(&md->esd_work, mipid_esd_work);
	FUNC3(&md->mutex);

	md->enabled = FUNC4(md);

	if (md->enabled)
		FUNC1(md);
	else
		md->saved_bklight_level = FUNC2(panel);

	return 0;
}