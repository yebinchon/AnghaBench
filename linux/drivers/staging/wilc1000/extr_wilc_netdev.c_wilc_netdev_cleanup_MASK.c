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
struct wilc {int vif_num; int /*<<< orphan*/  wiphy; int /*<<< orphan*/  bus_data; int /*<<< orphan*/  hif_workqueue; TYPE_1__** vif; int /*<<< orphan*/ * firmware; } ;
struct TYPE_2__ {scalar_t__ ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct wilc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wilc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct wilc *wilc)
{
	int i;

	if (!wilc)
		return;

	if (wilc->firmware) {
		FUNC3(wilc->firmware);
		wilc->firmware = NULL;
	}

	for (i = 0; i < wilc->vif_num; i++) {
		if (wilc->vif[i] && wilc->vif[i]->ndev)
			FUNC4(wilc->vif[i]->ndev);
	}

	FUNC5(wilc, false);
	FUNC1(wilc->hif_workqueue);
	FUNC0(wilc->hif_workqueue);
	FUNC6(wilc);
	FUNC2(wilc->bus_data);
	FUNC8(wilc->wiphy);
	FUNC7(wilc->wiphy);
}