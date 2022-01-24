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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct wilc {int /*<<< orphan*/  txq_spinlock; TYPE_1__ txq_head; } ;
struct txq_entry_t {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct txq_entry_t* FUNC1 (struct txq_entry_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct txq_entry_t *FUNC4(struct wilc *wilc,
						  struct txq_entry_t *tqe)
{
	unsigned long flags;

	FUNC2(&wilc->txq_spinlock, flags);

	if (!FUNC0(&tqe->list, &wilc->txq_head.list))
		tqe = FUNC1(tqe, list);
	else
		tqe = NULL;
	FUNC3(&wilc->txq_spinlock, flags);

	return tqe;
}