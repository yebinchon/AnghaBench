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
struct TYPE_4__ {struct _adapter* adapter; } ;
struct TYPE_5__ {TYPE_1__ hdr; int /*<<< orphan*/  list; } ;
union recv_frame {TYPE_2__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  queue; } ;
struct recv_priv {int free_recvframe_cnt; int rx_pending_cnt; TYPE_3__ free_recv_queue; int /*<<< orphan*/ * precv_frame_buf; int /*<<< orphan*/ * pallocated_frame_buf; struct _adapter* adapter; TYPE_3__ recv_pending_queue; int /*<<< orphan*/  lock; } ;
struct _adapter {int dummy; } ;
typedef  int sint ;
typedef  int addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NR_RECVFRAME ; 
 int RXFRAME_ALIGN_SZ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct recv_priv*,struct _adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*,union recv_frame*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct recv_priv *precvpriv,
			   struct _adapter *padapter)
{
	sint i;
	union recv_frame *precvframe;

	FUNC5((unsigned char *)precvpriv, 0, sizeof(struct  recv_priv));
	FUNC8(&precvpriv->lock);
	FUNC1(&precvpriv->free_recv_queue);
	FUNC1(&precvpriv->recv_pending_queue);
	precvpriv->adapter = padapter;
	precvpriv->free_recvframe_cnt = NR_RECVFRAME;
	precvpriv->pallocated_frame_buf = FUNC3(NR_RECVFRAME *
				sizeof(union recv_frame) + RXFRAME_ALIGN_SZ,
				GFP_ATOMIC);
	if (precvpriv->pallocated_frame_buf == NULL)
		return;
	FUNC2(precvpriv->pallocated_frame_buf);
	precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
				    RXFRAME_ALIGN_SZ -
				    ((addr_t)(precvpriv->pallocated_frame_buf) &
				    (RXFRAME_ALIGN_SZ - 1));
	precvframe = (union recv_frame *)precvpriv->precv_frame_buf;
	for (i = 0; i < NR_RECVFRAME; i++) {
		FUNC0(&(precvframe->u.list));
		FUNC4(&(precvframe->u.list),
				 &(precvpriv->free_recv_queue.queue));
		FUNC7(padapter, precvframe);
		precvframe->u.hdr.adapter = padapter;
		precvframe++;
	}
	precvpriv->rx_pending_cnt = 1;
	FUNC6(precvpriv, padapter);
}