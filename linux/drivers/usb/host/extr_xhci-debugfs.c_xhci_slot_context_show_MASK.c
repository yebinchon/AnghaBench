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
struct xhci_virt_device {TYPE_2__* out_ctx; TYPE_1__* udev; } ;
struct xhci_slot_priv {struct xhci_virt_device* dev; } ;
struct xhci_slot_ctx {int /*<<< orphan*/  dev_state; int /*<<< orphan*/  tt_info; int /*<<< orphan*/  dev_info2; int /*<<< orphan*/  dev_info; } ;
struct xhci_hcd {int dummy; } ;
struct seq_file {struct xhci_slot_priv* private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct xhci_hcd* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xhci_slot_ctx* FUNC5 (struct xhci_hcd*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *s, void *unused)
{
	struct xhci_hcd		*xhci;
	struct xhci_slot_ctx	*slot_ctx;
	struct xhci_slot_priv	*priv = s->private;
	struct xhci_virt_device	*dev = priv->dev;

	xhci = FUNC1(FUNC0(dev->udev->bus));
	slot_ctx = FUNC5(xhci, dev->out_ctx);
	FUNC3(s, "%pad: %s\n", &dev->out_ctx->dma,
		   FUNC4(FUNC2(slot_ctx->dev_info),
					    FUNC2(slot_ctx->dev_info2),
					    FUNC2(slot_ctx->tt_info),
					    FUNC2(slot_ctx->dev_state)));

	return 0;
}