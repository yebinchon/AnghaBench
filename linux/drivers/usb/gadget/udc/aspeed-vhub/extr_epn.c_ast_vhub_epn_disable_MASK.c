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
struct usb_ep {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * desc; } ;
struct TYPE_3__ {int enabled; int /*<<< orphan*/  g_idx; scalar_t__ regs; } ;
struct ast_vhub_ep {TYPE_2__ ep; TYPE_1__ epn; struct ast_vhub* vhub; } ;
struct ast_vhub {int /*<<< orphan*/  lock; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ AST_VHUB_EP_ACK_IER ; 
 scalar_t__ AST_VHUB_EP_ACK_ISR ; 
 scalar_t__ AST_VHUB_EP_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct ast_vhub_ep*,char*) ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ast_vhub_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ast_vhub_ep*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ast_vhub_ep* FUNC7 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct usb_ep* u_ep)
{
	struct ast_vhub_ep *ep = FUNC7(u_ep);
	struct ast_vhub *vhub = ep->vhub;
	unsigned long flags;
	u32 imask, ep_ier;

	FUNC0(ep, "Disabling !\n");

	FUNC5(&vhub->lock, flags);

	ep->epn.enabled = false;

	/* Stop active DMA if any */
	FUNC3(ep, false);

	/* Disable endpoint */
	FUNC8(0, ep->epn.regs + AST_VHUB_EP_CONFIG);

	/* Disable ACK interrupt */
	imask = FUNC1(ep->epn.g_idx);
	ep_ier = FUNC4(vhub->regs + AST_VHUB_EP_ACK_IER);
	ep_ier &= ~imask;
	FUNC8(ep_ier, vhub->regs + AST_VHUB_EP_ACK_IER);
	FUNC8(imask, vhub->regs + AST_VHUB_EP_ACK_ISR);

	/* Nuke all pending requests */
	FUNC2(ep, -ESHUTDOWN);

	/* No more descriptor associated with request */
	ep->ep.desc = NULL;

	FUNC6(&vhub->lock, flags);

	return 0;
}