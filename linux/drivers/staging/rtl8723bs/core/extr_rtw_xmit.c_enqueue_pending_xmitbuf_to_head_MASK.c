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
struct __queue {int /*<<< orphan*/  lock; } ;
struct xmit_priv {struct __queue pending_xmitbuf_queue; } ;
struct xmit_buf {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(
	struct xmit_priv *pxmitpriv,
	struct xmit_buf *pxmitbuf)
{
	struct __queue *pqueue;

	pqueue = &pxmitpriv->pending_xmitbuf_queue;

	FUNC3(&pqueue->lock);
	FUNC2(&pxmitbuf->list);
	FUNC1(&pxmitbuf->list, FUNC0(pqueue));
	FUNC4(&pqueue->lock);
}