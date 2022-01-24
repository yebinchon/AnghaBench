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
struct wifi_only_cfg {int dummy; } ;
struct rtl_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wifi_only_cfg*) ; 
 struct wifi_only_cfg* FUNC1 (struct rtl_priv*) ; 

void FUNC2(struct rtl_priv *rtlpriv)
{
	struct wifi_only_cfg *wifionly_cfg = FUNC1(rtlpriv);

	if (!wifionly_cfg)
		return;

	FUNC0(wifionly_cfg);
}