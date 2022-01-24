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
struct ecryptfs_msg_ctx {int /*<<< orphan*/  state; int /*<<< orphan*/ * msg; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECRYPTFS_MSG_CTX_STATE_FREE ; 
 int /*<<< orphan*/  ecryptfs_msg_ctx_free_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct ecryptfs_msg_ctx *msg_ctx)
{
	FUNC1(&(msg_ctx->node), &ecryptfs_msg_ctx_free_list);
	FUNC0(msg_ctx->msg);
	msg_ctx->msg = NULL;
	msg_ctx->state = ECRYPTFS_MSG_CTX_STATE_FREE;
}