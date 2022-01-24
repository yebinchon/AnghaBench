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
struct vnt_tx_datahead_g {void* duration_a; int /*<<< orphan*/  hdr; void* time_stamp_off_b; void* time_stamp_off_a; void* duration_b; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct vnt_private {int current_aid; int /*<<< orphan*/  top_cck_basic_rate; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  void* __le16 ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PK_TYPE_11B ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 
 void* FUNC7 (struct vnt_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC8(struct vnt_usb_send_context *tx_context,
			       struct vnt_tx_datahead_g *buf)
{
	struct vnt_private *priv = tx_context->priv;
	struct ieee80211_hdr *hdr =
				(struct ieee80211_hdr *)tx_context->skb->data;
	u32 frame_len = tx_context->frame_len;
	u16 rate = tx_context->tx_rate;
	u8 need_ack = tx_context->need_ack;

	/* Get SignalField,ServiceField,Length */
	FUNC5(priv, frame_len, rate, tx_context->pkt_type, &buf->a);
	FUNC5(priv, frame_len, priv->top_cck_basic_rate,
			  PK_TYPE_11B, &buf->b);

	/* Get Duration and TimeStamp */
	if (FUNC2(hdr->frame_control)) {
		__le16 dur = FUNC1(priv->current_aid | FUNC0(14) | FUNC0(15));

		buf->duration_a = dur;
		buf->duration_b = dur;
	} else {
		buf->duration_a = FUNC4(priv,
						tx_context->pkt_type, need_ack);
		buf->duration_b = FUNC4(priv,
						      PK_TYPE_11B, need_ack);
	}

	buf->time_stamp_off_a = FUNC7(priv, rate);
	buf->time_stamp_off_b = FUNC7(priv,
						   priv->top_cck_basic_rate);

	tx_context->tx_hdr_size = FUNC6(tx_context, &buf->hdr);

	return FUNC3(buf->duration_a);
}