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
struct omap_hdmi {void (* audio_abort_cb ) (struct device*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  display_enabled; int /*<<< orphan*/  cfg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct omap_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
			      void (*abort_cb)(struct device *dev))
{
	struct omap_hdmi *hd = FUNC0(dev);
	int ret = 0;

	FUNC2(&hd->lock);

	if (!FUNC1(&hd->cfg) || !hd->display_enabled) {
		ret = -EPERM;
		goto out;
	}

	hd->audio_abort_cb = abort_cb;

out:
	FUNC3(&hd->lock);

	return ret;
}