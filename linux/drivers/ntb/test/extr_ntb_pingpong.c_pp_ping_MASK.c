#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pp_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  in_db; TYPE_1__* ntb; int /*<<< orphan*/  out_db; int /*<<< orphan*/  out_pidx; int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pp_ctx *pp)
{
	u32 count;

	count = FUNC0(&pp->count);

	FUNC7(&pp->lock);
	FUNC6(pp->ntb, pp->out_pidx, 0, count);
	FUNC4(pp->ntb, pp->out_pidx, 0, count);

	FUNC1(&pp->ntb->dev, "Ping port %d spad %#x, msg %#x\n",
		FUNC5(pp->ntb, pp->out_pidx), count, count);

	FUNC3(pp->ntb, pp->out_db);
	FUNC2(pp->ntb, pp->in_db);
	FUNC8(&pp->lock);
}