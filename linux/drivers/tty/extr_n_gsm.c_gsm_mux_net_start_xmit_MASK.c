#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct gsm_mux_net {struct gsm_dlci* dlci; } ;
struct gsm_dlci {int /*<<< orphan*/  skb_list; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC1 (struct gsm_mux_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsm_mux_net*) ; 
 struct gsm_mux_net* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb,
				      struct net_device *net)
{
	struct gsm_mux_net *mux_net = FUNC3(net);
	struct gsm_dlci *dlci = mux_net->dlci;
	FUNC1(mux_net);

	FUNC5(&dlci->skb_list, skb);
	net->stats.tx_packets++;
	net->stats.tx_bytes += skb->len;
	FUNC0(dlci);
	/* And tell the kernel when the last transmit started. */
	FUNC4(net);
	FUNC2(mux_net);
	return NETDEV_TX_OK;
}