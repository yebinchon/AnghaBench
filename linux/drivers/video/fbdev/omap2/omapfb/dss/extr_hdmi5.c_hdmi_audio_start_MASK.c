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
struct omap_hdmi {int audio_playing; int /*<<< orphan*/  audio_playing_lock; scalar_t__ display_enabled; int /*<<< orphan*/  cfg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct omap_hdmi* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_hdmi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct omap_hdmi *hd = FUNC1(dev);
	unsigned long flags;

	FUNC0(!FUNC2(&hd->cfg));

	FUNC4(&hd->audio_playing_lock, flags);

	if (hd->display_enabled)
		FUNC3(hd);
	hd->audio_playing = true;

	FUNC5(&hd->audio_playing_lock, flags);
	return 0;
}