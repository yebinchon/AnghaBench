#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  MacAddress; } ;
struct TYPE_6__ {TYPE_2__ network; } ;
struct mlme_priv {TYPE_3__ cur_network; } ;
struct adapter {int /*<<< orphan*/  pnetdev; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  _drv_always_ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,int /*<<< orphan*/ *) ; 

void FUNC4(struct adapter *padapter)
{
	union iwreq_data wrqu;
	struct	mlme_priv *pmlmepriv = &padapter->mlmepriv;

	FUNC2(&wrqu, 0, sizeof(union iwreq_data));

	wrqu.ap_addr.sa_family = ARPHRD_ETHER;

	FUNC1(wrqu.ap_addr.sa_data, pmlmepriv->cur_network.network.MacAddress, ETH_ALEN);

	FUNC0(_drv_always_, "assoc success\n");
	FUNC3(padapter->pnetdev, SIOCGIWAP, &wrqu, NULL);
}