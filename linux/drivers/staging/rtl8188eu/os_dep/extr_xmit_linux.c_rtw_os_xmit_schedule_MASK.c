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
struct xmit_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  xmit_tasklet; } ;
struct adapter {struct xmit_priv xmitpriv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *padapter)
{
	struct xmit_priv *pxmitpriv;

	if (!padapter)
		return;

	pxmitpriv = &padapter->xmitpriv;

	FUNC1(&pxmitpriv->lock);

	if (FUNC0(padapter))
		FUNC3(&pxmitpriv->xmit_tasklet);

	FUNC2(&pxmitpriv->lock);
}