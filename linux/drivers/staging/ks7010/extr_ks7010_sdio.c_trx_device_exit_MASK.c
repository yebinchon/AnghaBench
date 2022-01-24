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
struct tx_device_buffer {int /*<<< orphan*/  skb; int /*<<< orphan*/  (* complete_handler ) (struct ks_wlan_private*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  sendp; } ;
struct TYPE_2__ {size_t qhead; struct tx_device_buffer* tx_dev_buff; } ;
struct ks_wlan_private {int /*<<< orphan*/  rx_bh_task; TYPE_1__ tx_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_wlan_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct ks_wlan_private*) ; 

__attribute__((used)) static void FUNC5(struct ks_wlan_private *priv)
{
	struct tx_device_buffer *sp;

	/* tx buffer clear */
	while (FUNC4(priv)) {
		sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qhead];
		FUNC1(sp->sendp);
		if (sp->complete_handler)	/* TX Complete */
			(*sp->complete_handler)(priv, sp->skb);
		FUNC0(priv);
	}

	FUNC3(&priv->rx_bh_task);
}