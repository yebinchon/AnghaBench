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
struct wl12xx_vif {int /*<<< orphan*/  flags; } ;
struct wl1271 {int /*<<< orphan*/ * roc_vif; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl)
{
	struct wl12xx_vif *wlvif;
	int ret;

	/* already completed */
	if (FUNC1(!wl->roc_vif))
		return 0;

	wlvif = FUNC3(wl->roc_vif);

	if (!FUNC0(WLVIF_FLAG_INITIALIZED, &wlvif->flags))
		return -EBUSY;

	ret = FUNC2(wl, wlvif);
	if (ret < 0)
		return ret;

	wl->roc_vif = NULL;

	return 0;
}