#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gsm_dlci {TYPE_1__* gsm; scalar_t__ net; scalar_t__ constipated; } ;
struct TYPE_4__ {scalar_t__ tx_bytes; int /*<<< orphan*/  tx_lock; } ;

/* Variables and functions */
 scalar_t__ TX_THRESH_LO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct gsm_dlci*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct gsm_dlci *dlci)
{
	unsigned long flags;
	int sweep;

	if (dlci->constipated)
		return;

	FUNC3(&dlci->gsm->tx_lock, flags);
	/* If we have nothing running then we need to fire up */
	sweep = (dlci->gsm->tx_bytes < TX_THRESH_LO);
	if (dlci->gsm->tx_bytes == 0) {
		if (dlci->net)
			FUNC1(dlci->gsm, dlci);
		else
			FUNC0(dlci->gsm, dlci);
	}
	if (sweep)
		FUNC2(dlci->gsm);
	FUNC4(&dlci->gsm->tx_lock, flags);
}