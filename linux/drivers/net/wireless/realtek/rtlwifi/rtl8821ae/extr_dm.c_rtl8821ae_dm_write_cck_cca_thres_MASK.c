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
typedef  scalar_t__ u8 ;
struct dig_t {scalar_t__ cur_cck_cca_thres; scalar_t__ pre_cck_cca_thres; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_REG_CCK_CCA_11AC ; 
 struct rtl_priv* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(struct ieee80211_hw *hw, u8 current_cca)
{
	struct rtl_priv *rtlpriv = FUNC0(hw);
	struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

	if (dm_digtable->cur_cck_cca_thres != current_cca)
		FUNC1(rtlpriv, DM_REG_CCK_CCA_11AC, current_cca);

	dm_digtable->pre_cck_cca_thres = dm_digtable->cur_cck_cca_thres;
	dm_digtable->cur_cck_cca_thres = current_cca;
}