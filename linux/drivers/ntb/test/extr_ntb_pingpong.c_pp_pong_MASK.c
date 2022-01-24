#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pp_ctx {int /*<<< orphan*/  timer; int /*<<< orphan*/  in_db; TYPE_1__* ntb; int /*<<< orphan*/  count; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  delay_ms ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (TYPE_1__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct pp_ctx *pp)
{
	u32 msg_data = -1, spad_data = -1;
	int pidx = 0;

	/* Read pong data */
	spad_data = FUNC9(pp->ntb, 0);
	msg_data = FUNC7(pp->ntb, &pidx, 0);
	FUNC6(pp->ntb, -1);

	/*
	 * Scratchpad and message data may differ, since message register can't
	 * be rewritten unless status is cleared. Additionally either of them
	 * might be unsupported
	 */
	FUNC1(&pp->ntb->dev, "Pong spad %#x, msg %#x (port %d)\n",
		spad_data, msg_data, FUNC8(pp->ntb, pidx));

	FUNC0(&pp->count);

	FUNC5(pp->ntb, pp->in_db);
	FUNC4(pp->ntb, pp->in_db);

	FUNC2(&pp->timer, FUNC3(delay_ms), HRTIMER_MODE_REL);
}