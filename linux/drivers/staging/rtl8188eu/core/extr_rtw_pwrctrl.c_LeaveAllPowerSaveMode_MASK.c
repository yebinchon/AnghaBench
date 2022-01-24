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
 int /*<<< orphan*/  LPS_CTRL_LEAVE ; 
 int /*<<< orphan*/  _FW_LINKED ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct adapter *Adapter)
{
	struct mlme_priv	*pmlmepriv = &(Adapter->mlmepriv);
	u8	enqueue = 0;

	if (FUNC0(pmlmepriv, _FW_LINKED))
		FUNC1(Adapter, LPS_CTRL_LEAVE, enqueue);
}