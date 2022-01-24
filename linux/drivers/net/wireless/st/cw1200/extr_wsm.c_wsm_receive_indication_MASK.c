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
struct wsm_rx {int rcpi_rssi; void* status; void* flags; void* rx_rate; int /*<<< orphan*/  channel_number; } ;
struct wsm_buf {size_t data; size_t begin; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct cw1200_common {scalar_t__ join_status; int /*<<< orphan*/  unjoin_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  cqm_use_rssi; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ CW1200_JOIN_STATUS_STA ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct wsm_buf*) ; 
 void* FUNC1 (struct wsm_buf*) ; 
 void* FUNC2 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*,struct wsm_rx*,int,struct sk_buff**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC12 (struct cw1200_common*) ; 

__attribute__((used)) static int FUNC13(struct cw1200_common *priv,
				  int link_id,
				  struct wsm_buf *buf,
				  struct sk_buff **skb_p)
{
	struct wsm_rx rx;
	struct ieee80211_hdr *hdr;
	size_t hdr_len;
	__le16 fctl;

	rx.status = FUNC1(buf);
	rx.channel_number = FUNC0(buf);
	rx.rx_rate = FUNC2(buf);
	rx.rcpi_rssi = FUNC2(buf);
	rx.flags = FUNC1(buf);

	/* FW Workaround: Drop probe resp or
	   beacon when RSSI is 0
	*/
	hdr = (struct ieee80211_hdr *)(*skb_p)->data;

	if (!rx.rcpi_rssi &&
	    (FUNC6(hdr->frame_control) ||
	     FUNC4(hdr->frame_control)))
		return 0;

	/* If no RSSI subscription has been made,
	 * convert RCPI to RSSI here
	 */
	if (!priv->cqm_use_rssi)
		rx.rcpi_rssi = rx.rcpi_rssi / 2 - 110;

	fctl = *(__le16 *)buf->data;
	hdr_len = buf->data - buf->begin;
	FUNC9(*skb_p, hdr_len);
	if (!rx.status && FUNC5(fctl)) {
		if (priv->join_status == CW1200_JOIN_STATUS_STA) {
			/* Shedule unjoin work */
			FUNC7("[WSM] Issue unjoin command (RX).\n");
			FUNC11(priv);
			if (FUNC8(priv->workqueue,
				       &priv->unjoin_work) <= 0)
				FUNC12(priv);
		}
	}
	FUNC3(priv, &rx, link_id, skb_p);
	if (*skb_p)
		FUNC10(*skb_p, hdr_len);

	return 0;

underflow:
	return -EINVAL;
}