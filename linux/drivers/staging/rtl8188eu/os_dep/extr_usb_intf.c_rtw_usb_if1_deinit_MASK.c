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
struct net_device {int dummy; } ;
struct mlme_priv {int dummy; } ;
struct adapter {int /*<<< orphan*/  hw_init_completed; int /*<<< orphan*/  pmondev; struct mlme_priv mlmepriv; struct net_device* pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct adapter *if1)
{
	struct net_device *pnetdev = if1->pnetdev;
	struct mlme_priv *pmlmepriv = &if1->mlmepriv;

	if (FUNC0(pmlmepriv, _FW_LINKED))
		FUNC6(if1, 0, false);

#ifdef CONFIG_88EU_AP_MODE
	free_mlme_ap_info(if1);
#endif

	if (pnetdev)
		FUNC9(pnetdev); /* will call netdev_close() */

	FUNC3(if1->pmondev);
	FUNC4(if1);

	FUNC5(if1);
	FUNC2("+r871xu_dev_remove, hw_init_completed=%d\n",
		if1->hw_init_completed);
	FUNC7(if1);
	FUNC8(pnetdev);
}