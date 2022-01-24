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
struct wilc_vif {int /*<<< orphan*/  periodic_rssi; struct host_if_drv* hif_drv; struct wilc* wilc; } ;
struct wilc {scalar_t__ clients_count; int /*<<< orphan*/  deinit_lock; } ;
struct net_device {int dummy; } ;
struct host_if_drv {scalar_t__ p2p_timeout; int /*<<< orphan*/  hif_state; int /*<<< orphan*/  remain_on_ch_timer; int /*<<< orphan*/  connect_timer; int /*<<< orphan*/  scan_timer; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HOST_IF_IDLE ; 
 int /*<<< orphan*/  get_periodic_rssi ; 
 scalar_t__ jiffies ; 
 struct host_if_drv* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  listen_timer_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wilc_vif* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  timer_connect_cb ; 
 int /*<<< orphan*/  timer_scan_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct net_device *dev, struct host_if_drv **hif_drv_handler)
{
	struct host_if_drv *hif_drv;
	struct wilc_vif *vif = FUNC4(dev);
	struct wilc *wilc = vif->wilc;

	hif_drv  = FUNC0(sizeof(*hif_drv), GFP_KERNEL);
	if (!hif_drv)
		return -ENOMEM;

	*hif_drv_handler = hif_drv;

	vif->hif_drv = hif_drv;

	if (wilc->clients_count == 0)
		FUNC3(&wilc->deinit_lock);

	FUNC5(&vif->periodic_rssi, get_periodic_rssi, 0);
	FUNC1(&vif->periodic_rssi, jiffies + FUNC2(5000));

	FUNC5(&hif_drv->scan_timer, timer_scan_cb, 0);
	FUNC5(&hif_drv->connect_timer, timer_connect_cb, 0);
	FUNC5(&hif_drv->remain_on_ch_timer, listen_timer_cb, 0);

	hif_drv->hif_state = HOST_IF_IDLE;

	hif_drv->p2p_timeout = 0;

	wilc->clients_count++;

	return 0;
}