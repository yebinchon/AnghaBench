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
typedef  int /*<<< orphan*/  u32 ;
struct rsi_common {scalar_t__ coex_cb; } ;
struct TYPE_2__ {int /*<<< orphan*/  completion; int /*<<< orphan*/  event; int /*<<< orphan*/  thread_done; } ;
struct rsi_coex_ctrl_block {TYPE_1__ coex_tx_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_WAIT_FOREVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsi_coex_ctrl_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rsi_common *common)
{
	struct rsi_coex_ctrl_block *coex_cb =
		(struct rsi_coex_ctrl_block *)common->coex_cb;
	u32 timeout = EVENT_WAIT_FOREVER;

	do {
		FUNC4(&coex_cb->coex_tx_thread.event, timeout);
		FUNC3(&coex_cb->coex_tx_thread.event);

		FUNC2(coex_cb);
	} while (FUNC0(&coex_cb->coex_tx_thread.thread_done) == 0);

	FUNC1(&coex_cb->coex_tx_thread.completion, 0);
}