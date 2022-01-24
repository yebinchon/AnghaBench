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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {scalar_t__ frag_threshold; } ;
struct TYPE_4__ {TYPE_1__ tx; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_frag_threshold {int /*<<< orphan*/  frag_threshold; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_FRAG_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IEEE80211_MAX_FRAG_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acx_frag_threshold*) ; 
 struct acx_frag_threshold* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct acx_frag_threshold*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, u32 frag_threshold)
{
	struct acx_frag_threshold *acx;
	int ret = 0;

	/*
	 * If the fragmentation is not configured or out of range, use the
	 * default value.
	 */
	if (frag_threshold > IEEE80211_MAX_FRAG_THRESHOLD)
		frag_threshold = wl->conf.tx.frag_threshold;

	FUNC4(DEBUG_ACX, "acx frag threshold: %d", frag_threshold);

	acx = FUNC2(sizeof(*acx), GFP_KERNEL);

	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->frag_threshold = FUNC0((u16)frag_threshold);
	ret = FUNC3(wl, ACX_FRAG_CFG, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC5("Setting of frag threshold failed: %d", ret);
		goto out;
	}

out:
	FUNC1(acx);
	return ret;
}