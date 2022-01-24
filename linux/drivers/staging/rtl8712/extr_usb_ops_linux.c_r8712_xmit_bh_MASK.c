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
struct xmit_priv {int /*<<< orphan*/  xmit_tasklet; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; scalar_t__ surprise_removed; scalar_t__ driver_stopped; struct xmit_priv xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct _adapter*,struct xmit_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void *priv)
{
	int ret = false;
	struct _adapter *padapter = priv;
	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;

	if (padapter->driver_stopped ||
	    padapter->surprise_removed) {
		FUNC0(padapter->pnetdev, "xmit_bh => driver_stopped or surprise_removed\n");
		return;
	}
	ret = FUNC1(padapter, pxmitpriv, NULL);
	if (!ret)
		return;
	FUNC2(&pxmitpriv->xmit_tasklet);
}