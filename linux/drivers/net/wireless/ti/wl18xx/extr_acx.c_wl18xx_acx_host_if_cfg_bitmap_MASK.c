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
typedef  int /*<<< orphan*/  u32 ;
struct wl18xx_acx_host_config_bitmap {void* length_field_size; void* extra_mem_blocks; void* host_sdio_block_size; void* host_cfg_bitmap; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_HOST_IF_CFG_BITMAP ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl18xx_acx_host_config_bitmap*) ; 
 struct wl18xx_acx_host_config_bitmap* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ,struct wl18xx_acx_host_config_bitmap*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int FUNC6(struct wl1271 *wl, u32 host_cfg_bitmap,
				  u32 sdio_blk_size, u32 extra_mem_blks,
				  u32 len_field_size)
{
	struct wl18xx_acx_host_config_bitmap *bitmap_conf;
	int ret;

	FUNC4(DEBUG_ACX, "acx cfg bitmap %d blk %d spare %d field %d",
		     host_cfg_bitmap, sdio_blk_size, extra_mem_blks,
		     len_field_size);

	bitmap_conf = FUNC2(sizeof(*bitmap_conf), GFP_KERNEL);
	if (!bitmap_conf) {
		ret = -ENOMEM;
		goto out;
	}

	bitmap_conf->host_cfg_bitmap = FUNC0(host_cfg_bitmap);
	bitmap_conf->host_sdio_block_size = FUNC0(sdio_blk_size);
	bitmap_conf->extra_mem_blocks = FUNC0(extra_mem_blks);
	bitmap_conf->length_field_size = FUNC0(len_field_size);

	ret = FUNC3(wl, ACX_HOST_IF_CFG_BITMAP,
				   bitmap_conf, sizeof(*bitmap_conf));
	if (ret < 0) {
		FUNC5("wl1271 bitmap config opt failed: %d", ret);
		goto out;
	}

out:
	FUNC1(bitmap_conf);

	return ret;
}