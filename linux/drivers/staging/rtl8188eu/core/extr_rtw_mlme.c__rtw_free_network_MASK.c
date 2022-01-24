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
typedef  int u32 ;
struct wlan_network {unsigned long last_scanned; int /*<<< orphan*/  list; scalar_t__ fixed; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct mlme_priv {struct __queue free_bss_pool; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int SCANQUEUE_LIFETIME ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlme_priv *pmlmepriv, struct wlan_network *pnetwork, u8 isfreeall)
{
	unsigned long curr_time;
	u32 delta_time;
	u32 lifetime = SCANQUEUE_LIFETIME;
	struct __queue *free_queue = &pmlmepriv->free_bss_pool;

	if (!pnetwork)
		return;

	if (pnetwork->fixed)
		return;
	curr_time = jiffies;
	if ((FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) ||
	    (FUNC0(pmlmepriv, WIFI_ADHOC_STATE)))
		lifetime = 1;
	if (!isfreeall) {
		delta_time = (curr_time - pnetwork->last_scanned)/HZ;
		if (delta_time < lifetime)/*  unit:sec */
			return;
	}
	FUNC3(&free_queue->lock);
	FUNC2(&pnetwork->list);
	FUNC1(&pnetwork->list, &free_queue->queue);
	FUNC4(&free_queue->lock);
}