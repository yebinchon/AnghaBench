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
struct omap_dss_audio {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pixelclock; } ;
struct TYPE_4__ {TYPE_1__ timings; } ;
struct omap_hdmi {int audio_configured; int /*<<< orphan*/  lock; struct omap_dss_audio audio_config; TYPE_2__ cfg; int /*<<< orphan*/  wp; int /*<<< orphan*/  core; int /*<<< orphan*/  display_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct omap_hdmi* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct omap_dss_audio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
			     struct omap_dss_audio *dss_audio)
{
	struct omap_hdmi *hd = FUNC0(dev);
	int ret;

	FUNC3(&hd->lock);

	if (!FUNC2(&hd->cfg) || !hd->display_enabled) {
		ret = -EPERM;
		goto out;
	}

	ret = FUNC1(&hd->core, &hd->wp, dss_audio,
				 hd->cfg.timings.pixelclock);
	if (!ret) {
		hd->audio_configured = true;
		hd->audio_config = *dss_audio;
	}
out:
	FUNC4(&hd->lock);

	return ret;
}