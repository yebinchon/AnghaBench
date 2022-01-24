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
struct mlme_priv {int dummy; } ;
struct adapter {struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_AP_STATE ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 

__attribute__((used)) static void FUNC5(struct adapter *padapter, u8 *pbuf, int sz)
{
	struct mlme_priv *pmlmepriv;

	padapter = (struct adapter *)pbuf;
	pmlmepriv = &padapter->mlmepriv;

#ifdef CONFIG_88EU_AP_MODE
	if (check_fwstate(pmlmepriv, WIFI_AP_STATE))
		expire_timeout_chk(padapter);
#endif

	FUNC2(padapter);
	FUNC4(padapter);

	FUNC3(padapter);
}