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
struct timer_list {int dummy; } ;
struct rsi_common {int /*<<< orphan*/  mutex; int /*<<< orphan*/  roc_timer; TYPE_1__* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO_ZONE ; 
 struct rsi_common* common ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rsi_common* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  roc_timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsi_common*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct timer_list *t)
{
	struct rsi_common *common = FUNC1(common, t, roc_timer);

	FUNC5(INFO_ZONE, "Remain on channel expired\n");

	FUNC3(&common->mutex);
	FUNC2(common->priv->hw);

	if (FUNC7(&common->roc_timer))
		FUNC0(&common->roc_timer);

	FUNC6(common);
	FUNC4(&common->mutex);
}