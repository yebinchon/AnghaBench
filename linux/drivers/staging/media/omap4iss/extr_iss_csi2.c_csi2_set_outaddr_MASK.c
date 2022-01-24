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
typedef  void* u32 ;
struct iss_csi2_device {int /*<<< orphan*/  regs1; int /*<<< orphan*/  iss; struct iss_csi2_ctx_cfg* contexts; } ;
struct iss_csi2_ctx_cfg {void* pong_addr; int /*<<< orphan*/  ctxnum; void* ping_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(struct iss_csi2_device *csi2, u32 addr)
{
	struct iss_csi2_ctx_cfg *ctx = &csi2->contexts[0];

	ctx->ping_addr = addr;
	ctx->pong_addr = addr;
	FUNC2(csi2->iss, csi2->regs1, FUNC0(ctx->ctxnum),
		      ctx->ping_addr);
	FUNC2(csi2->iss, csi2->regs1, FUNC1(ctx->ctxnum),
		      ctx->pong_addr);
}