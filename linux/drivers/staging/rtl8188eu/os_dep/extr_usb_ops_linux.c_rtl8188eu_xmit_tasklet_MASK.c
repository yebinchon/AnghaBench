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
struct xmit_priv {int dummy; } ;
struct adapter {scalar_t__ bWritePortCancel; scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; int /*<<< orphan*/  mlmepriv; struct xmit_priv xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  _FW_UNDER_SURVEY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct xmit_priv*) ; 

void FUNC3(void *priv)
{
	struct adapter *adapt = priv;
	struct xmit_priv *pxmitpriv = &adapt->xmitpriv;

	if (FUNC1(&adapt->mlmepriv, _FW_UNDER_SURVEY))
		return;

	while (1) {
		if ((adapt->bDriverStopped) ||
		    (adapt->bSurpriseRemoved) ||
		    (adapt->bWritePortCancel)) {
			FUNC0("xmit_tasklet => bDriverStopped or bSurpriseRemoved or bWritePortCancel\n");
			break;
		}

		if (!FUNC2(adapt, pxmitpriv))
			break;
	}
}