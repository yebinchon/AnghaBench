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
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct wilc_vif {TYPE_1__ netstats; struct wilc* wilc; } ;
struct wilc {int vif_num; int /*<<< orphan*/  vif_mutex; TYPE_2__** vif; } ;
struct tx_complete_data {scalar_t__ size; int /*<<< orphan*/  buff; struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; struct net_device* dev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  ndev; scalar_t__ mac_opened; } ;

/* Variables and functions */
 int FLOW_CONTROL_UPPER_THRESHOLD ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct tx_complete_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 struct wilc_vif* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  wilc_tx_complete ; 
 int FUNC8 (struct net_device*,void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *ndev)
{
	struct wilc_vif *vif = FUNC5(ndev);
	struct wilc *wilc = vif->wilc;
	struct tx_complete_data *tx_data = NULL;
	int queue_count;

	if (skb->dev != ndev) {
		FUNC4(ndev, "Packet not destined to this device\n");
		return 0;
	}

	tx_data = FUNC1(sizeof(*tx_data), GFP_ATOMIC);
	if (!tx_data) {
		FUNC0(skb);
		FUNC7(ndev);
		return 0;
	}

	tx_data->buff = skb->data;
	tx_data->size = skb->len;
	tx_data->skb  = skb;

	vif->netstats.tx_packets++;
	vif->netstats.tx_bytes += tx_data->size;
	queue_count = FUNC8(ndev, (void *)tx_data,
						tx_data->buff, tx_data->size,
						wilc_tx_complete);

	if (queue_count > FLOW_CONTROL_UPPER_THRESHOLD) {
		int i;

		FUNC2(&wilc->vif_mutex);
		for (i = 0; i < wilc->vif_num; i++) {
			if (wilc->vif[i]->mac_opened)
				FUNC6(wilc->vif[i]->ndev);
		}
		FUNC3(&wilc->vif_mutex);
	}

	return 0;
}