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
struct cw1200_queue_stats {TYPE_1__* priv; } ;
struct cw1200_queue {int /*<<< orphan*/  queue_id; int /*<<< orphan*/  tx_locked_cnt; struct cw1200_queue_stats* stats; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct cw1200_queue *queue)
{
	struct cw1200_queue_stats *stats = queue->stats;
	if (queue->tx_locked_cnt++ == 0) {
		FUNC1("[TX] Queue %d is locked.\n",
			 queue->queue_id);
		FUNC0(stats->priv->hw, queue->queue_id);
	}
}