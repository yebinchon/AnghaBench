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
struct omap_hdmi {int audio_configured; int audio_playing; int /*<<< orphan*/  lock; int /*<<< orphan*/ * audio_abort_cb; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct omap_hdmi* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct omap_hdmi *hd = FUNC0(dev);

	FUNC1(&hd->lock);
	hd->audio_abort_cb = NULL;
	hd->audio_configured = false;
	hd->audio_playing = false;
	FUNC2(&hd->lock);

	return 0;
}