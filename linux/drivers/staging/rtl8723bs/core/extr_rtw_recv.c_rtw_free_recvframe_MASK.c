#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  list; scalar_t__ len; struct adapter* adapter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;
union recv_frame {TYPE_1__ u; } ;
struct __queue {int /*<<< orphan*/  lock; } ;
struct recv_priv {int /*<<< orphan*/  free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct adapter {struct recv_priv recvpriv; } ;

/* Variables and functions */
 int _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (union recv_frame*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(union recv_frame *precvframe, struct __queue *pfree_recv_queue)
{
	struct adapter *padapter = precvframe->u.hdr.adapter;
	struct recv_priv *precvpriv = &padapter->recvpriv;

	FUNC3(precvframe);


	FUNC4(&pfree_recv_queue->lock);

	FUNC2(&(precvframe->u.hdr.list));

	precvframe->u.hdr.len = 0;

	FUNC1(&(precvframe->u.hdr.list), FUNC0(pfree_recv_queue));

	if (padapter) {
		if (pfree_recv_queue == &precvpriv->free_recv_queue)
				precvpriv->free_recvframe_cnt++;
	}
	FUNC5(&pfree_recv_queue->lock);
	return _SUCCESS;
}