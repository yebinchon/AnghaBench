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
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_dev_lock; } ;
struct TYPE_3__ {size_t qtail; scalar_t__* buff; } ;
struct ks_wlan_private {int /*<<< orphan*/  rw_dwork; int /*<<< orphan*/  wq; TYPE_2__ tx_dev; TYPE_1__ hostt; int /*<<< orphan*/  net_dev; } ;
struct hostif_hdr {int /*<<< orphan*/  event; } ;

/* Variables and functions */
 scalar_t__ HIF_DATA_REQ ; 
 scalar_t__ HIF_REQ_MAX ; 
 int SME_EVENT_BUFF_SIZE ; 
 int FUNC0 (struct ks_wlan_private*,void*,unsigned long,void (*) (struct ks_wlan_private*,struct sk_buff*),struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ks_wlan_private*) ; 

int FUNC7(struct ks_wlan_private *priv, void *p, unsigned long size,
		  void (*complete_handler)(struct ks_wlan_private *priv,
					   struct sk_buff *skb),
		  struct sk_buff *skb)
{
	int result;
	struct hostif_hdr *hdr;

	hdr = (struct hostif_hdr *)p;

	if (FUNC1(hdr->event) < HIF_DATA_REQ ||
	    FUNC1(hdr->event) > HIF_REQ_MAX) {
		FUNC2(priv->net_dev, "unknown event=%04X\n", hdr->event);
		return 0;
	}

	/* add event to hostt buffer */
	priv->hostt.buff[priv->hostt.qtail] = FUNC1(hdr->event);
	priv->hostt.qtail = (priv->hostt.qtail + 1) % SME_EVENT_BUFF_SIZE;

	FUNC4(&priv->tx_dev.tx_dev_lock);
	result = FUNC0(priv, p, size, complete_handler, skb);
	FUNC5(&priv->tx_dev.tx_dev_lock);

	if (FUNC6(priv))
		FUNC3(priv->wq, &priv->rw_dwork, 0);

	return result;
}