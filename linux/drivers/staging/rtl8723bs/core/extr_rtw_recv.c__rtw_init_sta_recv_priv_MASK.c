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
struct sta_recv_priv {int /*<<< orphan*/  defrag_q; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct sta_recv_priv *psta_recvpriv)
{
	FUNC1((u8 *)psta_recvpriv, 0, sizeof(struct sta_recv_priv));

	FUNC2(&psta_recvpriv->lock);

	/* for (i = 0; i<MAX_RX_NUMBLKS; i++) */
	/* 	_rtw_init_queue(&psta_recvpriv->blk_strms[i]); */

	FUNC0(&psta_recvpriv->defrag_q);
}