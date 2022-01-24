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
struct vnt_usb_send_context {int /*<<< orphan*/  tx_hdr_size; int /*<<< orphan*/  frame_len; int /*<<< orphan*/  need_ack; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  tx_rate; struct vnt_private* priv; } ;
struct vnt_tx_datahead_a_fb {void* duration; int /*<<< orphan*/  hdr; int /*<<< orphan*/  time_stamp_off; void* duration_f1; void* duration_f0; int /*<<< orphan*/  a; } ;
struct vnt_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC5(struct vnt_usb_send_context *tx_context,
				  struct vnt_tx_datahead_a_fb *buf)
{
	struct vnt_private *priv = tx_context->priv;
	u16 rate = tx_context->tx_rate;
	u8 pkt_type = tx_context->pkt_type;
	u8 need_ack = tx_context->need_ack;
	u32 frame_len = tx_context->frame_len;

	/* Get SignalField,ServiceField,Length */
	FUNC2(priv, frame_len, rate, pkt_type, &buf->a);
	/* Get Duration and TimeStampOff */
	buf->duration = FUNC1(priv, pkt_type, need_ack);

	buf->duration_f0 = FUNC1(priv, pkt_type, need_ack);
	buf->duration_f1 = FUNC1(priv, pkt_type, need_ack);

	buf->time_stamp_off = FUNC4(priv, rate);

	tx_context->tx_hdr_size = FUNC3(tx_context, &buf->hdr);

	return FUNC0(buf->duration);
}