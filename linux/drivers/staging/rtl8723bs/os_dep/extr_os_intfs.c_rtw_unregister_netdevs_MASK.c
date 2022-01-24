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
struct dvobj_priv {struct adapter* padapters; } ;
struct adapter {scalar_t__ DriverState; int /*<<< orphan*/  rtw_wdev; struct net_device* pnetdev; } ;

/* Variables and functions */
 scalar_t__ DRIVER_DISAPPEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

void FUNC2(struct dvobj_priv *dvobj)
{
	struct adapter *padapter = NULL;
	struct net_device *pnetdev = NULL;

	padapter = dvobj->padapters;

	if (padapter == NULL)
		return;

	pnetdev = padapter->pnetdev;

	if ((padapter->DriverState != DRIVER_DISAPPEAR) && pnetdev)
		FUNC1(pnetdev); /* will call netdev_close() */
	FUNC0(padapter->rtw_wdev);
}