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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vnt_usb_send_context {int /*<<< orphan*/  tx_hdr_size; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  need_ack; int /*<<< orphan*/  tx_rate; int /*<<< orphan*/  frame_len; TYPE_1__* skb; struct vnt_private* priv; } ;
struct vnt_tx_datahead_ab {int /*<<< orphan*/  duration; int /*<<< orphan*/  hdr; int /*<<< orphan*/  time_stamp_off; int /*<<< orphan*/  ab; } ;
struct vnt_private {int current_aid; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vnt_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC8(struct vnt_usb_send_context *tx_context,
				struct vnt_tx_datahead_ab *buf)
{
	struct vnt_private *priv = tx_context->priv;
	struct ieee80211_hdr *hdr =
				(struct ieee80211_hdr *)tx_context->skb->data;
	u32 frame_len = tx_context->frame_len;
	u16 rate = tx_context->tx_rate;
	u8 need_ack = tx_context->need_ack;

	/* Get SignalField,ServiceField,Length */
	FUNC5(priv, frame_len, rate,
			  tx_context->pkt_type, &buf->ab);

	/* Get Duration and TimeStampOff */
	if (FUNC2(hdr->frame_control)) {
		__le16 dur = FUNC1(priv->current_aid | FUNC0(14) | FUNC0(15));

		buf->duration = dur;
	} else {
		buf->duration = FUNC4(priv, tx_context->pkt_type,
						    need_ack);
	}

	buf->time_stamp_off = FUNC7(priv, rate);

	tx_context->tx_hdr_size = FUNC6(tx_context, &buf->hdr);

	return FUNC3(buf->duration);
}