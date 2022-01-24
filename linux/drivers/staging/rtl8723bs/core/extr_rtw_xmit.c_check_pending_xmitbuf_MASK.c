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
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct xmit_priv {struct __queue pending_xmitbuf_queue; } ;
typedef  int sint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

sint FUNC3(
	struct xmit_priv *pxmitpriv)
{
	struct __queue *pqueue;
	sint	ret = false;

	pqueue = &pxmitpriv->pending_xmitbuf_queue;

	FUNC1(&pqueue->lock);

	if (!FUNC0(&pqueue->queue))
		ret = true;

	FUNC2(&pqueue->lock);

	return ret;
}