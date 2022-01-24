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
typedef  scalar_t__ u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {struct rtl_priv* adapter; } ;
struct TYPE_2__ {scalar_t__ cur_ss_type; scalar_t__ pre_ss_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_BT_COEXIST ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,scalar_t__) ; 
 TYPE_1__* coex_dm ; 

__attribute__((used)) static void FUNC2(struct btc_coexist *btcoexist,
					bool force_exec, u8 new_ss_type)
{
	struct rtl_priv *rtlpriv = btcoexist->adapter;

	FUNC0(rtlpriv, COMP_BT_COEXIST, DBG_LOUD,
		 "[BTCoex], %s Switch SS Type = %d\n",
		 (force_exec ? "force to" : ""), new_ss_type);
	coex_dm->cur_ss_type = new_ss_type;

	if (!force_exec) {
		if (coex_dm->pre_ss_type == coex_dm->cur_ss_type)
			return;
	}
	FUNC1(btcoexist, coex_dm->cur_ss_type);

	coex_dm->pre_ss_type = coex_dm->cur_ss_type;
}