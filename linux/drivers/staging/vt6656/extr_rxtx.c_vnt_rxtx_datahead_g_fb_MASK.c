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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vnt_usb_send_context {int /*<<< orphan*/  tx_hdr_size; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  need_ack; int /*<<< orphan*/  tx_rate; int /*<<< orphan*/  frame_len; struct vnt_private* priv; } ;
struct vnt_tx_datahead_g_fb {void* duration_a; int /*<<< orphan*/  hdr; void* time_stamp_off_b; void* time_stamp_off_a; void* duration_a_f1; void* duration_a_f0; void* duration_b; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
struct vnt_private {int /*<<< orphan*/  top_cck_basic_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  PK_TYPE_11B ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 
 void* FUNC4 (struct vnt_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC5(struct vnt_usb_send_context *tx_context,
				  struct vnt_tx_datahead_g_fb *buf)
{
	struct vnt_private *priv = tx_context->priv;
	u32 frame_len = tx_context->frame_len;
	u16 rate = tx_context->tx_rate;
	u8 need_ack = tx_context->need_ack;

	/* Get SignalField,ServiceField,Length */
	FUNC2(priv, frame_len, rate, tx_context->pkt_type, &buf->a);

	FUNC2(priv, frame_len, priv->top_cck_basic_rate,
			  PK_TYPE_11B, &buf->b);

	/* Get Duration and TimeStamp */
	buf->duration_a = FUNC1(priv, tx_context->pkt_type,
					      need_ack);
	buf->duration_b = FUNC1(priv, PK_TYPE_11B, need_ack);

	buf->duration_a_f0 = FUNC1(priv, tx_context->pkt_type,
						 need_ack);
	buf->duration_a_f1 = FUNC1(priv, tx_context->pkt_type,
						 need_ack);

	buf->time_stamp_off_a = FUNC4(priv, rate);
	buf->time_stamp_off_b = FUNC4(priv,
						   priv->top_cck_basic_rate);

	tx_context->tx_hdr_size = FUNC3(tx_context, &buf->hdr);

	return FUNC0(buf->duration_a);
}