#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {int display_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  audio_playing_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ hdmi ; 
 int /*<<< orphan*/  FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct omap_dss_device *dssdev)
{
	unsigned long flags;

	FUNC0("Enter hdmi_display_disable\n");

	FUNC3(&hdmi.lock);

	FUNC5(&hdmi.audio_playing_lock, flags);
	FUNC2(&hdmi);
	hdmi.display_enabled = false;
	FUNC6(&hdmi.audio_playing_lock, flags);

	FUNC1(dssdev);

	FUNC4(&hdmi.lock);
}