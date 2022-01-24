#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/ * body; } ;
struct TYPE_8__ {int /*<<< orphan*/ * bssid; int /*<<< orphan*/  channel; TYPE_2__ ssid; } ;
struct ks_wlan_private {TYPE_4__ reg; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * body; } ;
struct TYPE_5__ {int /*<<< orphan*/ * body; int /*<<< orphan*/  size; } ;
struct hostif_adhoc_set2_request {int /*<<< orphan*/ * bssid; TYPE_3__ channel_list; TYPE_1__ ssid; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HIF_ADH_SET_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hostif_adhoc_set2_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ks_wlan_private*,struct hostif_adhoc_set2_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC5(struct ks_wlan_private *priv)
{
	struct hostif_adhoc_set2_request *pp;

	pp = FUNC1(sizeof(*pp), HIF_ADH_SET_REQ);
	if (!pp)
		return;

	FUNC2(priv, &pp->request);
	pp->ssid.size = priv->reg.ssid.size;
	FUNC3(&pp->ssid.body[0], &priv->reg.ssid.body[0], priv->reg.ssid.size);

	pp->channel_list.body[0] = priv->reg.channel;
	pp->channel_list.size = 1;
	FUNC3(pp->bssid, priv->reg.bssid, ETH_ALEN);

	FUNC4(priv, pp, FUNC0(sizeof(*pp)));
}