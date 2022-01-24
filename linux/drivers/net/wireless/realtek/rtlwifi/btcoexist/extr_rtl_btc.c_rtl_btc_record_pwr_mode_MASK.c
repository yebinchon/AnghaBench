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
typedef  int u8 ;
struct rtl_priv {int dummy; } ;
struct btc_coexist {int /*<<< orphan*/  pwr_mode_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 struct btc_coexist* FUNC1 (struct rtl_priv*) ; 

void FUNC2(struct rtl_priv *rtlpriv, u8 *buf, u8 len)
{
	struct btc_coexist *btcoexist = FUNC1(rtlpriv);
	u8 safe_len;

	if (!btcoexist)
		return;

	safe_len = sizeof(btcoexist->pwr_mode_val);

	if (safe_len > len)
		safe_len = len;

	FUNC0(btcoexist->pwr_mode_val, buf, safe_len);
}