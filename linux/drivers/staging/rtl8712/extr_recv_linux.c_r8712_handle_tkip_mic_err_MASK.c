#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wrqu ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_2__ data; TYPE_1__ src_addr; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ u8 ;
struct mlme_priv {int /*<<< orphan*/ * assoc_bssid; } ;
struct iw_michaelmicfailure {TYPE_2__ data; TYPE_1__ src_addr; int /*<<< orphan*/  flags; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; struct mlme_priv mlmepriv; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  IWEVMICHAELMICFAILURE ; 
 int /*<<< orphan*/  IW_MICFAILURE_GROUP ; 
 int /*<<< orphan*/  IW_MICFAILURE_PAIRWISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (union iwreq_data*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union iwreq_data*,char*) ; 

void FUNC3(struct _adapter *adapter, u8 bgroup)
{
	union iwreq_data wrqu;
	struct iw_michaelmicfailure ev;
	struct mlme_priv *mlmepriv  = &adapter->mlmepriv;

	FUNC1(&ev, 0x00, sizeof(ev));
	if (bgroup)
		ev.flags |= IW_MICFAILURE_GROUP;
	else
		ev.flags |= IW_MICFAILURE_PAIRWISE;
	ev.src_addr.sa_family = ARPHRD_ETHER;
	FUNC0(ev.src_addr.sa_data, &mlmepriv->assoc_bssid[0]);
	FUNC1(&wrqu, 0x00, sizeof(wrqu));
	wrqu.data.length = sizeof(ev);
	FUNC2(adapter->pnetdev, IWEVMICHAELMICFAILURE, &wrqu,
			    (char *)&ev);
}