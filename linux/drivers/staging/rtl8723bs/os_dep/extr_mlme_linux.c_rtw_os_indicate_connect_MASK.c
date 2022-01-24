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
struct mlme_priv {int dummy; } ;
struct adapter {scalar_t__* pid; int /*<<< orphan*/  pnetdev; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 int FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC6(struct adapter *adapter)
{
	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);

	if ((FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true) ||
		(FUNC0(pmlmepriv, WIFI_ADHOC_STATE) == true)) {
		FUNC2(adapter);
	} else
		FUNC3(adapter);

	FUNC4(adapter);
	FUNC1(adapter->pnetdev);

	if (adapter->pid[2] != 0)
		FUNC5(adapter->pid[2], SIGALRM);
}