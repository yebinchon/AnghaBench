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
struct mipid_device {int enabled; int /*<<< orphan*/  mutex; int /*<<< orphan*/  saved_bklight_level; } ;
struct lcd_panel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mipid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct lcd_panel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mipid_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mipid_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mipid_device*,int /*<<< orphan*/ ) ; 
 struct mipid_device* FUNC7 (struct lcd_panel*) ; 

__attribute__((used)) static int FUNC8(struct lcd_panel *panel)
{
	struct mipid_device *md = FUNC7(panel);

	FUNC2(&md->mutex);

	if (md->enabled) {
		FUNC3(&md->mutex);
		return 0;
	}
	FUNC6(md, 0);
	md->enabled = 1;
	FUNC4(md);
	FUNC5(md, 1);
	FUNC1(panel, md->saved_bklight_level);
	FUNC0(md);

	FUNC3(&md->mutex);
	return 0;
}