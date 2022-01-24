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
struct mlme_ext_info {int /*<<< orphan*/  network; } ;
struct mlme_ext_priv {struct mlme_ext_info mlmext_info; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

s32 FUNC2(struct adapter *padapter, u8 *da)
{
	struct mlme_ext_priv *pmlmeext;
	struct mlme_ext_info *pmlmeinfo;


	pmlmeext = &padapter->mlmeextpriv;
	pmlmeinfo = &pmlmeext->mlmext_info;

	/* da == NULL, assum it's null data for sta to ap*/
	if (!da)
		da = FUNC1(&(pmlmeinfo->network));

	return FUNC0(padapter, da, 0, false);
}