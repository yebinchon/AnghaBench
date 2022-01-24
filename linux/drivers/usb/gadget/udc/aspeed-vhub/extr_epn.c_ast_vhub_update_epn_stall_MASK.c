#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  g_idx; scalar_t__ wedged; scalar_t__ stalled; scalar_t__ regs; } ;
struct ast_vhub_ep {scalar_t__ d_idx; TYPE_2__* vhub; TYPE_1__ epn; } ;
struct TYPE_4__ {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_EP_CONFIG ; 
 scalar_t__ AST_VHUB_EP_TOGGLE ; 
 int /*<<< orphan*/  VHUB_EP_CFG_STALL_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct ast_vhub_ep *ep)
{
	u32 reg;

	if (FUNC1(ep->d_idx == 0))
		return;
	reg = FUNC2(ep->epn.regs + AST_VHUB_EP_CONFIG);
	if (ep->epn.stalled || ep->epn.wedged)
		reg |= VHUB_EP_CFG_STALL_CTRL;
	else
		reg &= ~VHUB_EP_CFG_STALL_CTRL;
	FUNC3(reg, ep->epn.regs + AST_VHUB_EP_CONFIG);

	if (!ep->epn.stalled && !ep->epn.wedged)
		FUNC3(FUNC0(ep->epn.g_idx),
		       ep->vhub->regs + AST_VHUB_EP_TOGGLE);
}