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
typedef  int /*<<< orphan*/  u8 ;
struct mlme_ext_info {scalar_t__ FW_sta_info; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_CAM_INVALID_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct adapter *padapter)
{
	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;

	FUNC1(padapter, HW_VAR_CAM_INVALID_ALL, NULL);

	FUNC0((u8 *)(pmlmeinfo->FW_sta_info), 0, sizeof(pmlmeinfo->FW_sta_info));
}