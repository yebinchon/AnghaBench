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
typedef  int /*<<< orphan*/  u8 ;
typedef  unsigned int u32 ;
struct wlan_network {int fixed; int /*<<< orphan*/  list; scalar_t__ last_scanned; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct mlme_priv {int /*<<< orphan*/  num_of_scanned; struct __queue free_bss_pool; } ;

/* Variables and functions */
 unsigned int SCANQUEUE_LIFETIME ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct	mlme_priv *pmlmepriv, struct wlan_network *pnetwork, u8 isfreeall)
{
	unsigned int delta_time;
	u32 lifetime = SCANQUEUE_LIFETIME;
/* 	_irqL irqL; */
	struct __queue *free_queue = &(pmlmepriv->free_bss_pool);

	if (pnetwork == NULL)
		return;

	if (pnetwork->fixed == true)
		return;

	if ((FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
		(FUNC0(pmlmepriv, WIFI_ADHOC_STATE) == true))
		lifetime = 1;

	if (!isfreeall) {
		delta_time = FUNC1(jiffies - pnetwork->last_scanned);
		if (delta_time < lifetime)/*  unit:msec */
			return;
	}

	FUNC4(&free_queue->lock);

	FUNC3(&(pnetwork->list));

	FUNC2(&(pnetwork->list), &(free_queue->queue));

	pmlmepriv->num_of_scanned--;


	/* DBG_871X("_rtw_free_network:SSID =%s\n", pnetwork->network.Ssid.Ssid); */

	FUNC5(&free_queue->lock);
}