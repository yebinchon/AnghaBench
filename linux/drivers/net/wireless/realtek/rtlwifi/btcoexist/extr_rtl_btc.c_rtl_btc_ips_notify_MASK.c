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
struct rtl_priv {int dummy; } ;
struct btc_coexist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERFON ; 
 int /*<<< orphan*/  FUNC0 (struct btc_coexist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct btc_coexist*,int) ; 
 struct btc_coexist* FUNC2 (struct rtl_priv*) ; 

void FUNC3(struct rtl_priv *rtlpriv, u8 type)
{
	struct btc_coexist *btcoexist = FUNC2(rtlpriv);

	if (!btcoexist)
		return;

	FUNC0(btcoexist, type);

	if (type == ERFON) {
		/* In some situation, it doesn't scan after leaving IPS, and
		 * this will cause btcoex in wrong state.
		 */
		FUNC1(btcoexist, 1);
		FUNC1(btcoexist, 0);
	}
}