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
struct tx_device_buffer {unsigned char* sendp; unsigned long size; void (* complete_handler ) (struct ks_wlan_private*,struct sk_buff*) ;struct sk_buff* skb; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {size_t qtail; struct tx_device_buffer* tx_dev_buff; } ;
struct ks_wlan_private {scalar_t__ dev_state; TYPE_1__ tx_dev; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_BOOT ; 
 int EOVERFLOW ; 
 int EPERM ; 
 int TX_DEVICE_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void FUNC3 (struct ks_wlan_private*,struct sk_buff*) ; 
 int FUNC4 (struct ks_wlan_private*) ; 

__attribute__((used)) static int FUNC5(struct ks_wlan_private *priv, unsigned char *p,
			 unsigned long size,
			 void (*complete_handler)(struct ks_wlan_private *priv,
						  struct sk_buff *skb),
			 struct sk_buff *skb)
{
	struct tx_device_buffer *sp;
	int ret;

	if (priv->dev_state < DEVICE_STATE_BOOT) {
		ret = -EPERM;
		goto err_complete;
	}

	if ((TX_DEVICE_BUFF_SIZE - 1) <= FUNC4(priv)) {
		FUNC2(priv->net_dev, "tx buffer overflow\n");
		ret = -EOVERFLOW;
		goto err_complete;
	}

	sp = &priv->tx_dev.tx_dev_buff[priv->tx_dev.qtail];
	sp->sendp = p;
	sp->size = size;
	sp->complete_handler = complete_handler;
	sp->skb = skb;
	FUNC0(priv);

	return 0;

err_complete:
	FUNC1(p);
	if (complete_handler)
		(*complete_handler)(priv, skb);

	return ret;
}