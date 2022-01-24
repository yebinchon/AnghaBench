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
struct wilc {int /*<<< orphan*/  rxq_cs; TYPE_1__ rxq_head; scalar_t__ quit; } ;
struct rxq_entry_t {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct wilc *wilc, struct rxq_entry_t *rqe)
{
	if (wilc->quit)
		return;

	FUNC1(&wilc->rxq_cs);
	FUNC0(&rqe->list, &wilc->rxq_head.list);
	FUNC2(&wilc->rxq_cs);
}