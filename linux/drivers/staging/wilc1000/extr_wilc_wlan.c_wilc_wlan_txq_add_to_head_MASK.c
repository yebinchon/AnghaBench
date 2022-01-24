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
struct wilc_vif {struct wilc* wilc; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct wilc {int txq_entries; int /*<<< orphan*/  txq_event; int /*<<< orphan*/  txq_add_to_head_cs; int /*<<< orphan*/  txq_spinlock; TYPE_1__ txq_head; } ;
struct txq_entry_t {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct wilc_vif *vif,
				      struct txq_entry_t *tqe)
{
	unsigned long flags;
	struct wilc *wilc = vif->wilc;

	FUNC2(&wilc->txq_add_to_head_cs);

	FUNC4(&wilc->txq_spinlock, flags);

	FUNC1(&tqe->list, &wilc->txq_head.list);
	wilc->txq_entries += 1;

	FUNC5(&wilc->txq_spinlock, flags);
	FUNC3(&wilc->txq_add_to_head_cs);
	FUNC0(&wilc->txq_event);
}