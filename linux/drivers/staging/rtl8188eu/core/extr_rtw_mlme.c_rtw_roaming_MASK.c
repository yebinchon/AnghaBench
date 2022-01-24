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
struct wlan_network {int dummy; } ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct wlan_network*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct adapter *padapter, struct wlan_network *tgt_network)
{
	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC1(&pmlmepriv->lock);
	FUNC0(padapter, tgt_network);
	FUNC2(&pmlmepriv->lock);
}