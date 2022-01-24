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
struct wl1271 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  wl_lock; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  hw; int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/ * elp_compl; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_IRQ ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  WL1271_FLAG_FW_TX_BUSY ; 
 int /*<<< orphan*/  WL1271_FLAG_IRQ_RUNNING ; 
 int /*<<< orphan*/  WL1271_FLAG_PENDING_WORK ; 
 int /*<<< orphan*/  WL1271_FLAG_SUSPENDED ; 
 int /*<<< orphan*/  WL1271_FLAG_TX_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC13 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC14 (struct wl1271*) ; 
 int FUNC15 (struct wl1271*) ; 

__attribute__((used)) static irqreturn_t FUNC16(int irq, void *cookie)
{
	int ret;
	unsigned long flags;
	struct wl1271 *wl = cookie;

	/* complete the ELP completion */
	FUNC9(&wl->wl_lock, flags);
	FUNC8(WL1271_FLAG_IRQ_RUNNING, &wl->flags);
	if (wl->elp_compl) {
		FUNC2(wl->elp_compl);
		wl->elp_compl = NULL;
	}

	if (FUNC11(WL1271_FLAG_SUSPENDED, &wl->flags)) {
		/* don't enqueue a work right now. mark it as pending */
		FUNC8(WL1271_FLAG_PENDING_WORK, &wl->flags);
		FUNC12(DEBUG_IRQ, "should not enqueue work");
		FUNC3(wl->irq);
		FUNC7(wl->dev, 0);
		FUNC10(&wl->wl_lock, flags);
		return IRQ_HANDLED;
	}
	FUNC10(&wl->wl_lock, flags);

	/* TX might be handled here, avoid redundant work */
	FUNC8(WL1271_FLAG_TX_PENDING, &wl->flags);
	FUNC0(&wl->tx_work);

	FUNC5(&wl->mutex);

	ret = FUNC15(wl);
	if (ret)
		FUNC14(wl);

	FUNC9(&wl->wl_lock, flags);
	/* In case TX was not handled here, queue TX work */
	FUNC1(WL1271_FLAG_TX_PENDING, &wl->flags);
	if (!FUNC11(WL1271_FLAG_FW_TX_BUSY, &wl->flags) &&
	    FUNC13(wl) > 0)
		FUNC4(wl->hw, &wl->tx_work);
	FUNC10(&wl->wl_lock, flags);

	FUNC6(&wl->mutex);

	return IRQ_HANDLED;
}