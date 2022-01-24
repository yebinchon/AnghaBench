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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int agg_enable_bitmap; int candidate_tid_bitmap; } ;
struct sta_info {int /*<<< orphan*/  hwaddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; TYPE_1__ htpriv; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _FW_LINKED ; 
 int FUNC0 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,struct sta_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct sta_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

u8 FUNC9(
	struct adapter *padapter,
	struct sta_info *psta,
	bool active,
	u16 reason
)
{
	u8 beacon_updated = false;

	if (!psta)
		return beacon_updated;

	if (active) {
		/* tear down Rx AMPDU */
		FUNC6(padapter, 0, psta->hwaddr);/*  recipient */

		/* tear down TX AMPDU */
		FUNC6(padapter, 1, psta->hwaddr);/*  // originator */

		FUNC1(padapter, psta->hwaddr, reason);
	}

	psta->htpriv.agg_enable_bitmap = 0x0;/* reset */
	psta->htpriv.candidate_tid_bitmap = 0x0;/* reset */

	/* report_del_sta_event(padapter, psta->hwaddr, reason); */

	/* clear cam entry / key */
	FUNC4(padapter, psta, true);

	FUNC7(&psta->lock);
	psta->state &= ~_FW_LINKED;
	FUNC8(&psta->lock);

	FUNC3(padapter, psta->hwaddr, reason);

	FUNC2(padapter, psta->hwaddr, reason);

	beacon_updated = FUNC0(padapter, psta);

	FUNC5(padapter, psta);

	return beacon_updated;
}