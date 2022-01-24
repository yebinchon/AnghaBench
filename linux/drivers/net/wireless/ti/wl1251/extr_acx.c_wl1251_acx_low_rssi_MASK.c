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
typedef  void* u8 ;
struct wl1251 {int dummy; } ;
struct acx_low_rssi {int type; void* depth; void* weight; int /*<<< orphan*/  threshold; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  enum wl1251_acx_low_rssi_type { ____Placeholder_wl1251_acx_low_rssi_type } wl1251_acx_low_rssi_type ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_LOW_RSSI ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_low_rssi*) ; 
 struct acx_low_rssi* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,struct acx_low_rssi*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1251 *wl, s8 threshold, u8 weight,
			u8 depth, enum wl1251_acx_low_rssi_type type)
{
	struct acx_low_rssi *rssi;
	int ret;

	FUNC3(DEBUG_ACX, "acx low rssi");

	rssi = FUNC1(sizeof(*rssi), GFP_KERNEL);
	if (!rssi)
		return -ENOMEM;

	rssi->threshold = threshold;
	rssi->weight = weight;
	rssi->depth = depth;
	rssi->type = type;

	ret = FUNC2(wl, ACX_LOW_RSSI, rssi, sizeof(*rssi));
	if (ret < 0)
		FUNC4("failed to set low rssi threshold: %d", ret);

	FUNC0(rssi);
	return ret;
}