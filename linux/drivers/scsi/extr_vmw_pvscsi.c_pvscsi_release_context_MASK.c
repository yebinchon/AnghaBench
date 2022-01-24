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
struct pvscsi_ctx {int /*<<< orphan*/  list; int /*<<< orphan*/ * abort_cmp; int /*<<< orphan*/ * cmd; } ;
struct pvscsi_adapter {int /*<<< orphan*/  cmd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct pvscsi_adapter *adapter,
				   struct pvscsi_ctx *ctx)
{
	ctx->cmd = NULL;
	ctx->abort_cmp = NULL;
	FUNC0(&ctx->list, &adapter->cmd_pool);
}