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
struct vnt_rts_g {int /*<<< orphan*/  data_head; void* duration_aa; int /*<<< orphan*/  data; void* duration_ba; void* duration_bb; int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;
struct vnt_private {int top_cck_basic_rate; int top_ofdm_basic_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  PK_TYPE_11B ; 
 int /*<<< orphan*/  RTSDUR_AA ; 
 int /*<<< orphan*/  RTSDUR_BA ; 
 int /*<<< orphan*/  RTSDUR_BB ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_usb_send_context*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct vnt_usb_send_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct vnt_usb_send_context*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC4(struct vnt_usb_send_context *tx_context,
			       struct vnt_rts_g *buf)
{
	struct vnt_private *priv = tx_context->priv;
	u16 rts_frame_len = 20;
	u16 current_rate = tx_context->tx_rate;

	FUNC1(priv, rts_frame_len, priv->top_cck_basic_rate,
			  PK_TYPE_11B, &buf->b);
	FUNC1(priv, rts_frame_len, priv->top_ofdm_basic_rate,
			  tx_context->pkt_type, &buf->a);

	buf->duration_bb = FUNC2(tx_context, RTSDUR_BB,
						      PK_TYPE_11B,
						      priv->top_cck_basic_rate);
	buf->duration_aa = FUNC2(tx_context, RTSDUR_AA,
						      tx_context->pkt_type,
						      current_rate);
	buf->duration_ba = FUNC2(tx_context, RTSDUR_BA,
						      tx_context->pkt_type,
						      current_rate);

	FUNC0(tx_context, &buf->data, buf->duration_aa);

	return FUNC3(tx_context, &buf->data_head);
}