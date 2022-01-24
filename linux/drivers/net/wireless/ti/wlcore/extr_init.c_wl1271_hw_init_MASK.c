#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl1271 {int /*<<< orphan*/ * target_mem_map; TYPE_3__* hw; TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct TYPE_5__ {int /*<<< orphan*/  frag_threshold; } ;
struct TYPE_4__ {int (* hw_init ) (struct wl1271*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wl1271*) ; 
 int FUNC2 (struct wl1271*) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*) ; 
 int FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*) ; 
 int FUNC8 (struct wl1271*,int) ; 
 int FUNC9 (struct wl1271*) ; 
 int FUNC10 (struct wl1271*) ; 
 int FUNC11 (struct wl1271*) ; 
 int FUNC12 (struct wl1271*) ; 
 int FUNC13 (struct wl1271*) ; 
 int FUNC14 (struct wl1271*) ; 
 int FUNC15 (struct wl1271*) ; 
 int FUNC16 (struct wl1271*) ; 
 int FUNC17 (struct wl1271*) ; 

int FUNC18(struct wl1271 *wl)
{
	int ret;

	/* Chip-specific hw init */
	ret = wl->ops->hw_init(wl);
	if (ret < 0)
		return ret;

	/* Init templates */
	ret = FUNC11(wl);
	if (ret < 0)
		return ret;

	ret = FUNC13(wl);
	if (ret < 0)
		return ret;

	/* Configure the FW logger */
	ret = FUNC15(wl);
	if (ret < 0)
		return ret;

	ret = FUNC17(wl);
	if (ret < 0)
		return ret;

	/* Bluetooth WLAN coexistence */
	ret = FUNC10(wl);
	if (ret < 0)
		return ret;

	/* Default memory configuration */
	ret = FUNC4(wl);
	if (ret < 0)
		return ret;

	/* RX config */
	ret = FUNC16(wl);
	if (ret < 0)
		goto out_free_memmap;

	ret = FUNC2(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* Configure TX patch complete interrupt behavior */
	ret = FUNC7(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* RX complete interrupt pacing */
	ret = FUNC5(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* Energy detection */
	ret = FUNC9(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* Default fragmentation threshold */
	ret = FUNC3(wl, wl->hw->wiphy->frag_threshold);
	if (ret < 0)
		goto out_free_memmap;

	/* Enable data path */
	ret = FUNC8(wl, 1);
	if (ret < 0)
		goto out_free_memmap;

	/* configure PM */
	ret = FUNC6(wl);
	if (ret < 0)
		goto out_free_memmap;

	ret = FUNC14(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* configure hangover */
	ret = FUNC12(wl);
	if (ret < 0)
		goto out_free_memmap;

	return 0;

 out_free_memmap:
	FUNC0(wl->target_mem_map);
	wl->target_mem_map = NULL;

	return ret;
}