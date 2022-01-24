#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union vnt_tx_data_head {int /*<<< orphan*/  rts_g; int /*<<< orphan*/  rts_g_fb; } ;
struct TYPE_4__ {union vnt_tx_data_head head; } ;
struct TYPE_5__ {TYPE_1__ mic; union vnt_tx_data_head head; } ;
struct vnt_rrv_time_rts {void* rrv_time_b; void* rrv_time_a; void* rts_rrv_time_bb; void* rts_rrv_time_ba; void* rts_rrv_time_aa; } ;
struct TYPE_6__ {TYPE_2__ tx; struct vnt_rrv_time_rts rts; } ;
union vnt_tx_head {TYPE_3__ tx_rts; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct vnt_usb_send_context {scalar_t__ fb_option; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  need_ack; int /*<<< orphan*/  tx_rate; int /*<<< orphan*/  frame_len; struct vnt_private* priv; } ;
struct vnt_private {int /*<<< orphan*/  top_cck_basic_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  PK_TYPE_11B ; 
 void* FUNC0 (struct vnt_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC4(struct vnt_usb_send_context *tx_context,
			union vnt_tx_head *tx_head, bool need_mic)
{
	struct vnt_private *priv = tx_context->priv;
	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
	u32 frame_len = tx_context->frame_len;
	u16 current_rate = tx_context->tx_rate;
	u8 need_ack = tx_context->need_ack;

	buf->rts_rrv_time_aa = FUNC0(priv, 2,
			tx_context->pkt_type, frame_len, current_rate);
	buf->rts_rrv_time_ba = FUNC0(priv, 1,
			tx_context->pkt_type, frame_len, current_rate);
	buf->rts_rrv_time_bb = FUNC0(priv, 0,
			tx_context->pkt_type, frame_len, current_rate);

	buf->rrv_time_a = FUNC1(priv, tx_context->pkt_type,
						frame_len, current_rate,
						need_ack);
	buf->rrv_time_b = FUNC1(priv, PK_TYPE_11B, frame_len,
					priv->top_cck_basic_rate, need_ack);

	if (need_mic)
		head = &tx_head->tx_rts.tx.mic.head;

	if (tx_context->fb_option)
		return FUNC2(tx_context, &head->rts_g_fb);

	return FUNC3(tx_context, &head->rts_g);
}