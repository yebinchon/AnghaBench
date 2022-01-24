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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  curr_txpoweridx; } ;
struct _adapter {TYPE_1__ mppriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*,int /*<<< orphan*/ ) ; 

void FUNC2(struct _adapter *pAdapter)
{
	u8 TxPower = pAdapter->mppriv.curr_txpoweridx;

	FUNC0(pAdapter, TxPower);
	FUNC1(pAdapter, TxPower);
}