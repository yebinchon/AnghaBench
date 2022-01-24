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
struct wl1251_acx_mem_map {int /*<<< orphan*/  rx_control_addr; int /*<<< orphan*/  num_rx_mem_blocks; int /*<<< orphan*/  tx_control_addr; int /*<<< orphan*/  num_tx_mem_blocks; } ;
struct wl1251 {struct wl1251_acx_mem_map* target_mem_map; struct wl1251_acx_mem_map* data_path; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int RX_CFG_PROMISCUOUS ; 
 int RX_CFG_TSF ; 
 int /*<<< orphan*/  RX_FILTER_OPTION_DEF ; 
 int /*<<< orphan*/  FUNC0 (struct wl1251_acx_mem_map*) ; 
 int FUNC1 (struct wl1251*) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct wl1251*) ; 
 int FUNC5 (struct wl1251*) ; 
 int FUNC6 (struct wl1251*) ; 
 int FUNC7 (struct wl1251*) ; 
 int FUNC8 (struct wl1251*) ; 
 int FUNC9 (struct wl1251*) ; 
 int FUNC10 (struct wl1251*) ; 
 int FUNC11 (struct wl1251*) ; 
 int FUNC12 (struct wl1251*) ; 
 int FUNC13 (struct wl1251*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct wl1251*) ; 
 int FUNC15 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(struct wl1251 *wl)
{
	struct wl1251_acx_mem_map *wl_mem_map;
	int ret;

	ret = FUNC8(wl);
	if (ret < 0)
		return ret;

	/* Template settings */
	ret = FUNC14(wl);
	if (ret < 0)
		return ret;

	/* Default memory configuration */
	ret = FUNC9(wl);
	if (ret < 0)
		return ret;

	/* Default data path configuration  */
	ret = FUNC6(wl);
	if (ret < 0)
		goto out_free_memmap;

	/* RX config */
	ret = FUNC13(wl,
				       RX_CFG_PROMISCUOUS | RX_CFG_TSF,
				       RX_FILTER_OPTION_DEF);
	/* RX_CONFIG_OPTION_ANY_DST_ANY_BSS,
	   RX_FILTER_OPTION_FILTER_ALL); */
	if (ret < 0)
		goto out_free_data_path;

	/* TX queues config */
	ret = FUNC15(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* PHY layer config */
	ret = FUNC10(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Initialize connection monitoring thresholds */
	ret = FUNC1(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Beacon filtering */
	ret = FUNC5(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Bluetooth WLAN coexistence */
	ret = FUNC12(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Energy detection */
	ret = FUNC7(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Beacons and boradcast settings */
	ret = FUNC4(wl);
	if (ret < 0)
		goto out_free_data_path;

	/* Enable rx data path */
	ret = FUNC2(wl, wl->channel, 1);
	if (ret < 0)
		goto out_free_data_path;

	/* Enable tx data path */
	ret = FUNC3(wl, wl->channel, 1);
	if (ret < 0)
		goto out_free_data_path;

	/* Default power state */
	ret = FUNC11(wl);
	if (ret < 0)
		goto out_free_data_path;

	wl_mem_map = wl->target_mem_map;
	FUNC16("%d tx blocks at 0x%x, %d rx blocks at 0x%x",
		    wl_mem_map->num_tx_mem_blocks,
		    wl->data_path->tx_control_addr,
		    wl_mem_map->num_rx_mem_blocks,
		    wl->data_path->rx_control_addr);

	return 0;

 out_free_data_path:
	FUNC0(wl->data_path);

 out_free_memmap:
	FUNC0(wl->target_mem_map);

	return ret;
}