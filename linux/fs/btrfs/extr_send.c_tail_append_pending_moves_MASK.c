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
struct send_ctx {int /*<<< orphan*/  pending_dir_moves; } ;
struct pending_dir_move {int /*<<< orphan*/  node; int /*<<< orphan*/  list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct send_ctx *sctx,
				      struct pending_dir_move *moves,
				      struct list_head *stack)
{
	if (FUNC4(&moves->list)) {
		FUNC3(&moves->list, stack);
	} else {
		FUNC0(list);
		FUNC5(&moves->list, &list);
		FUNC3(&moves->list, stack);
		FUNC6(&list, stack);
	}
	if (!FUNC2(&moves->node)) {
		FUNC7(&moves->node, &sctx->pending_dir_moves);
		FUNC1(&moves->node);
	}
}