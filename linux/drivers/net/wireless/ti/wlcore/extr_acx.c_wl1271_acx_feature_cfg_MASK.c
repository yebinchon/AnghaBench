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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;
struct acx_feature_config {scalar_t__ options; scalar_t__ data_flow_options; int /*<<< orphan*/  role_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_FEATURE_CFG ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_feature_config*) ; 
 struct acx_feature_config* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_feature_config*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif)
{
	struct acx_feature_config *feature;
	int ret;

	FUNC3(DEBUG_ACX, "acx feature cfg");

	feature = FUNC1(sizeof(*feature), GFP_KERNEL);
	if (!feature) {
		ret = -ENOMEM;
		goto out;
	}

	/* DF_ENCRYPTION_DISABLE and DF_SNIFF_MODE_ENABLE are disabled */
	feature->role_id = wlvif->role_id;
	feature->data_flow_options = 0;
	feature->options = 0;

	ret = FUNC2(wl, ACX_FEATURE_CFG,
				   feature, sizeof(*feature));
	if (ret < 0) {
		FUNC4("Couldn't set HW encryption");
		goto out;
	}

out:
	FUNC0(feature);
	return ret;
}