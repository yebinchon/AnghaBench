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
typedef  scalar_t__ u32 ;
struct recv_priv {int /*<<< orphan*/ * pallocated_recv_buf; int /*<<< orphan*/ * precv_buf; scalar_t__ free_recv_buf_queue_cnt; int /*<<< orphan*/  recv_tasklet; } ;
struct recv_buf {int /*<<< orphan*/  list; } ;
struct adapter {struct recv_priv recvpriv; } ;

/* Variables and functions */
 scalar_t__ NR_RECVBUFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct recv_buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *padapter)
{
	u32 i;
	struct recv_priv *precvpriv;
	struct recv_buf *precvbuf;

	precvpriv = &padapter->recvpriv;

	/* 3 1. kill tasklet */
	FUNC3(&precvpriv->recv_tasklet);

	/* 3 2. free all recv buffers */
	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
	if (precvbuf) {
		precvpriv->free_recv_buf_queue_cnt = 0;
		for (i = 0; i < NR_RECVBUFF; i++) {
			FUNC1(&precvbuf->list);
			FUNC2(padapter, precvbuf);
			precvbuf++;
		}
		precvpriv->precv_buf = NULL;
	}

	if (precvpriv->pallocated_recv_buf) {
		FUNC0(precvpriv->pallocated_recv_buf);
		precvpriv->pallocated_recv_buf = NULL;
	}
}