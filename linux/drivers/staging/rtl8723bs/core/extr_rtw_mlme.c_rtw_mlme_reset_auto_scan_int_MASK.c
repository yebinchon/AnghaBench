#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mlme_priv {int auto_scan_int_ms; int roam_scan_int_ms; } ;
struct mlme_ext_info {scalar_t__ VHT_enable; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct TYPE_2__ {scalar_t__ wifi_spec; } ;
struct adapter {TYPE_1__ registrypriv; struct mlme_ext_priv mlmeextpriv; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_ROAM_ACTIVE ; 
 int /*<<< orphan*/  WIFI_STATION_STATE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC3(struct adapter *adapter)
{
	struct mlme_priv *mlme = &adapter->mlmepriv;
	struct mlme_ext_priv *pmlmeext = &adapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);

	if (pmlmeinfo->VHT_enable) /* disable auto scan when connect to 11AC AP */
		mlme->auto_scan_int_ms = 0;
	else if (adapter->registrypriv.wifi_spec && FUNC1(adapter) == true)
		mlme->auto_scan_int_ms = 60*1000;
	else if (FUNC2(adapter, RTW_ROAM_ACTIVE)) {
		if (FUNC0(mlme, WIFI_STATION_STATE) && FUNC0(mlme, _FW_LINKED))
			mlme->auto_scan_int_ms = mlme->roam_scan_int_ms;
	} else
		mlme->auto_scan_int_ms = 0; /* disabled */

	return;
}