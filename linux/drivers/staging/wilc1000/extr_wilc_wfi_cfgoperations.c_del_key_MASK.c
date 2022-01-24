#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct wiphy {int dummy; } ;
struct wilc_priv {scalar_t__* wep_key_len; int /*<<< orphan*/ * wep_key; TYPE_2__** wilc_ptk; TYPE_2__** wilc_gtk; } ;
struct wilc_vif {struct wilc_priv priv; } ;
struct wilc {TYPE_1__** vif; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct TYPE_4__* seq; struct TYPE_4__* key; } ;
struct TYPE_3__ {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct wilc_vif* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct wilc_vif*,size_t) ; 
 struct wilc* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *netdev,
		   u8 key_index,
		   bool pairwise,
		   const u8 *mac_addr)
{
	struct wilc *wl = FUNC4(wiphy);
	struct wilc_vif *vif = FUNC2(netdev);
	struct wilc_priv *priv = &vif->priv;

	if (netdev == wl->vif[0]->ndev) {
		if (priv->wilc_gtk[key_index]) {
			FUNC0(priv->wilc_gtk[key_index]->key);
			priv->wilc_gtk[key_index]->key = NULL;
			FUNC0(priv->wilc_gtk[key_index]->seq);
			priv->wilc_gtk[key_index]->seq = NULL;

			FUNC0(priv->wilc_gtk[key_index]);
			priv->wilc_gtk[key_index] = NULL;
		}

		if (priv->wilc_ptk[key_index]) {
			FUNC0(priv->wilc_ptk[key_index]->key);
			priv->wilc_ptk[key_index]->key = NULL;
			FUNC0(priv->wilc_ptk[key_index]->seq);
			priv->wilc_ptk[key_index]->seq = NULL;
			FUNC0(priv->wilc_ptk[key_index]);
			priv->wilc_ptk[key_index] = NULL;
		}
	}

	if (key_index <= 3 && priv->wep_key_len[key_index]) {
		FUNC1(priv->wep_key[key_index], 0,
		       priv->wep_key_len[key_index]);
		priv->wep_key_len[key_index] = 0;
		FUNC3(vif, key_index);
	}

	return 0;
}