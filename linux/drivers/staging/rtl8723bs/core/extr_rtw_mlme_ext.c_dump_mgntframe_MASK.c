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
struct xmit_frame {int /*<<< orphan*/  pxmitbuf; } ;
struct adapter {int /*<<< orphan*/  xmitpriv; scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct xmit_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct xmit_frame*) ; 

void FUNC3(struct adapter *padapter, struct xmit_frame *pmgntframe)
{
	if (padapter->bSurpriseRemoved ||
		padapter->bDriverStopped) {
		FUNC0(&padapter->xmitpriv, pmgntframe->pxmitbuf);
		FUNC1(&padapter->xmitpriv, pmgntframe);
		return;
	}

	FUNC2(padapter, pmgntframe);
}