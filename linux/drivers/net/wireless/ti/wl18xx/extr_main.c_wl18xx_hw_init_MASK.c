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
struct wl18xx_priv {scalar_t__ extra_spare_key_count; scalar_t__ last_fw_rls_idx; } ;
struct wl1271 {struct wl18xx_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL18XX_TX_HW_BLOCK_SPARE ; 
 scalar_t__ checksum_param ; 
 int FUNC0 (struct wl1271*) ; 
 int FUNC1 (struct wl1271*) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct wl1271 *wl)
{
	int ret;
	struct wl18xx_priv *priv = wl->priv;

	/* (re)init private structures. Relevant on recovery as well. */
	priv->last_fw_rls_idx = 0;
	priv->extra_spare_key_count = 0;

	/* set the default amount of spare blocks in the bitmap */
	ret = FUNC2(wl, WL18XX_TX_HW_BLOCK_SPARE);
	if (ret < 0)
		return ret;

	/* set the dynamic fw traces bitmap */
	ret = FUNC0(wl);
	if (ret < 0)
		return ret;

	if (checksum_param) {
		ret = FUNC1(wl);
		if (ret != 0)
			return ret;
	}

	return ret;
}