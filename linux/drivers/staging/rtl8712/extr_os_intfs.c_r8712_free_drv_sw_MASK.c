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
struct net_device {int dummy; } ;
struct _adapter {int /*<<< orphan*/  recvpriv; int /*<<< orphan*/  stapriv; int /*<<< orphan*/  xmitpriv; int /*<<< orphan*/  mlmepriv; int /*<<< orphan*/  evtpriv; int /*<<< orphan*/  cmdpriv; struct net_device* pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct _adapter *padapter)
{
	struct net_device *pnetdev = padapter->pnetdev;

	FUNC6(&padapter->cmdpriv);
	FUNC7(&padapter->evtpriv);
	FUNC5(padapter);
	FUNC9(&padapter->mlmepriv);
	FUNC8(padapter);
	FUNC0(&padapter->xmitpriv);
	FUNC2(&padapter->stapriv);
	FUNC1(&padapter->recvpriv);
	FUNC4(padapter);
	if (pnetdev)
		FUNC3(pnetdev);
}