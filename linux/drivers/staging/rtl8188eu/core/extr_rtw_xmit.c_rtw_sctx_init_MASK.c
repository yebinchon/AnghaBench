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
struct submit_ctx {int timeout_ms; int /*<<< orphan*/  status; int /*<<< orphan*/  done; int /*<<< orphan*/  submit_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTW_SCTX_SUBMITTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 

void FUNC1(struct submit_ctx *sctx, int timeout_ms)
{
	sctx->timeout_ms = timeout_ms;
	sctx->submit_time = jiffies;
	FUNC0(&sctx->done);
	sctx->status = RTW_SCTX_SUBMITTED;
}