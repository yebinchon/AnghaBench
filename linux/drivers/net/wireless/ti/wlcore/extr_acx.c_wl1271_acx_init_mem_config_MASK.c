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
struct wl1271_acx_mem_map {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  tx_blocks_available; TYPE_1__* target_mem_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_tx_mem_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_TX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int FUNC6(struct wl1271 *wl)
{
	int ret;

	wl->target_mem_map = FUNC1(sizeof(struct wl1271_acx_mem_map),
				     GFP_KERNEL);
	if (!wl->target_mem_map) {
		FUNC5("couldn't allocate target memory map");
		return -ENOMEM;
	}

	/* we now ask for the firmware built memory map */
	ret = FUNC3(wl, (void *)wl->target_mem_map,
				 sizeof(struct wl1271_acx_mem_map));
	if (ret < 0) {
		FUNC5("couldn't retrieve firmware memory map");
		FUNC0(wl->target_mem_map);
		wl->target_mem_map = NULL;
		return ret;
	}

	/* initialize TX block book keeping */
	wl->tx_blocks_available =
		FUNC2(wl->target_mem_map->num_tx_mem_blocks);
	FUNC4(DEBUG_TX, "available tx blocks: %d",
		     wl->tx_blocks_available);

	return 0;
}