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
struct rsi_hw {int /*<<< orphan*/  (* determine_event_timeout ) (struct rsi_hw*) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  completion; int /*<<< orphan*/  event; int /*<<< orphan*/  thread_done; } ;
struct rsi_common {TYPE_1__ tx_thread; scalar_t__ init_done; struct rsi_hw* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_WAIT_FOREVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rsi_common*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rsi_hw*) ; 

__attribute__((used)) static void FUNC6(struct rsi_common *common)
{
	struct rsi_hw *adapter = common->priv;
	u32 timeout = EVENT_WAIT_FOREVER;

	do {
		if (adapter->determine_event_timeout)
			timeout = adapter->determine_event_timeout(adapter);
		FUNC4(&common->tx_thread.event, timeout);
		FUNC3(&common->tx_thread.event);

		if (common->init_done)
			FUNC2(common);
	} while (FUNC0(&common->tx_thread.thread_done) == 0);
	FUNC1(&common->tx_thread.completion, 0);
}