#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct tool_ctx {int /*<<< orphan*/  db_wq; TYPE_1__* ntb; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *ctx, int vec)
{
	struct tool_ctx *tc = ctx;
	u64 db_bits, db_mask;

	db_mask = FUNC2(tc->ntb, vec);
	db_bits = FUNC1(tc->ntb);

	FUNC0(&tc->ntb->dev, "doorbell vec %d mask %#llx bits %#llx\n",
		vec, db_mask, db_bits);

	FUNC3(&tc->db_wq);
}