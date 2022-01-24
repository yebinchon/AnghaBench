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
struct wlan_bssid_ex {int dummy; } ;
struct __queue {int /*<<< orphan*/  lock; } ;
struct mlme_priv {struct __queue scanned_queue; } ;
struct _adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,struct wlan_bssid_ex*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,struct wlan_bssid_ex*) ; 

__attribute__((used)) static void FUNC4(struct _adapter *adapter,
			 struct wlan_bssid_ex *pnetwork)
{
	unsigned long irqL;
	struct mlme_priv *pmlmepriv = &(((struct _adapter *)adapter)->mlmepriv);
	struct  __queue *queue = &pmlmepriv->scanned_queue;

	FUNC0(&queue->lock, irqL);
	FUNC2(adapter, pnetwork);
	FUNC3(adapter, pnetwork);
	FUNC1(&queue->lock, irqL);
}