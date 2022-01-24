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
typedef  int u16 ;
struct vnt_usb_send_context {int tx_rate; int /*<<< orphan*/  pkt_type; struct vnt_private* priv; } ;
struct vnt_rts_ab {int /*<<< orphan*/  data_head; int /*<<< orphan*/  duration; int /*<<< orphan*/  data; int /*<<< orphan*/  ab; } ;
struct vnt_private {int /*<<< orphan*/  top_ofdm_basic_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTSDUR_AA ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_usb_send_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_usb_send_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC4(struct vnt_usb_send_context *tx_context,
				struct vnt_rts_ab *buf)
{
	struct vnt_private *priv = tx_context->priv;
	u16 current_rate = tx_context->tx_rate;
	u16 rts_frame_len = 20;

	FUNC1(priv, rts_frame_len, priv->top_ofdm_basic_rate,
			  tx_context->pkt_type, &buf->ab);

	buf->duration = FUNC2(tx_context, RTSDUR_AA,
						   tx_context->pkt_type,
						   current_rate);

	FUNC0(tx_context, &buf->data, buf->duration);

	return FUNC3(tx_context, &buf->data_head);
}