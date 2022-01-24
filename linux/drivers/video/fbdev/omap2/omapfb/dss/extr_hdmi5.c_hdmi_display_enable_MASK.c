#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_device {int /*<<< orphan*/ * manager; } ;
struct TYPE_6__ {int /*<<< orphan*/  pixelclock; } ;
struct TYPE_7__ {TYPE_1__ timings; } ;
struct TYPE_9__ {int audio_configured; int display_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  audio_playing_lock; scalar_t__ audio_playing; TYPE_3__* pdev; int /*<<< orphan*/  (* audio_abort_cb ) (int /*<<< orphan*/ *) ;TYPE_2__ cfg; int /*<<< orphan*/  audio_config; int /*<<< orphan*/  wp; int /*<<< orphan*/  core; struct omap_dss_device output; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int ENODEV ; 
 TYPE_4__ hdmi ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct omap_dss_device *dssdev)
{
	struct omap_dss_device *out = &hdmi.output;
	unsigned long flags;
	int r = 0;

	FUNC0("ENTER hdmi_display_enable\n");

	FUNC5(&hdmi.lock);

	if (out->manager == NULL) {
		FUNC1("failed to enable display: no output/manager\n");
		r = -ENODEV;
		goto err0;
	}

	r = FUNC3(dssdev);
	if (r) {
		FUNC1("failed to power on device\n");
		goto err0;
	}

	if (hdmi.audio_configured) {
		r = FUNC2(&hdmi.core, &hdmi.wp, &hdmi.audio_config,
				       hdmi.cfg.timings.pixelclock);
		if (r) {
			FUNC1("Error restoring audio configuration: %d", r);
			hdmi.audio_abort_cb(&hdmi.pdev->dev);
			hdmi.audio_configured = false;
		}
	}

	FUNC7(&hdmi.audio_playing_lock, flags);
	if (hdmi.audio_configured && hdmi.audio_playing)
		FUNC4(&hdmi);
	hdmi.display_enabled = true;
	FUNC8(&hdmi.audio_playing_lock, flags);

	FUNC6(&hdmi.lock);
	return 0;

err0:
	FUNC6(&hdmi.lock);
	return r;
}