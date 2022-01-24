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
struct omap_overlay_manager {int dummy; } ;
struct dss_lcd_mgr_config {int dummy; } ;
struct mgr_priv_data {int extra_info_dirty; struct dss_lcd_mgr_config lcd_config; } ;

/* Variables and functions */
 struct mgr_priv_data* FUNC0 (struct omap_overlay_manager*) ; 

__attribute__((used)) static void FUNC1(struct omap_overlay_manager *mgr,
		const struct dss_lcd_mgr_config *config)
{
	struct mgr_priv_data *mp = FUNC0(mgr);

	mp->lcd_config = *config;
	mp->extra_info_dirty = true;
}