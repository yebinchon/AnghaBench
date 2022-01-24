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
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; TYPE_2__* eps; } ;
struct xhci_hcd {int /*<<< orphan*/  lock; struct xhci_virt_device** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct xhci_command {scalar_t__ status; int /*<<< orphan*/  completion; } ;
struct TYPE_4__ {TYPE_1__* ring; } ;
struct TYPE_3__ {scalar_t__ dequeue; } ;

/* Variables and functions */
 scalar_t__ COMP_COMMAND_ABORTED ; 
 scalar_t__ COMP_COMMAND_RING_STOPPED ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ EP_STATE_RUNNING ; 
 int ETIME ; 
 scalar_t__ FUNC0 (struct xhci_ep_ctx*) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int LAST_EP_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_virt_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct xhci_command* FUNC5 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_hcd*,struct xhci_command*) ; 
 struct xhci_ep_ctx* FUNC7 (struct xhci_hcd*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct xhci_hcd*,struct xhci_command*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*) ; 

__attribute__((used)) static int FUNC11(struct xhci_hcd *xhci, int slot_id, int suspend)
{
	struct xhci_virt_device *virt_dev;
	struct xhci_command *cmd;
	unsigned long flags;
	int ret;
	int i;

	ret = 0;
	virt_dev = xhci->devs[slot_id];
	if (!virt_dev)
		return -ENODEV;

	FUNC3(virt_dev);

	cmd = FUNC5(xhci, true, GFP_NOIO);
	if (!cmd)
		return -ENOMEM;

	FUNC1(&xhci->lock, flags);
	for (i = LAST_EP_INDEX; i > 0; i--) {
		if (virt_dev->eps[i].ring && virt_dev->eps[i].ring->dequeue) {
			struct xhci_ep_ctx *ep_ctx;
			struct xhci_command *command;

			ep_ctx = FUNC7(xhci, virt_dev->out_ctx, i);

			/* Check ep is running, required by AMD SNPS 3.1 xHC */
			if (FUNC0(ep_ctx) != EP_STATE_RUNNING)
				continue;

			command = FUNC5(xhci, false, GFP_NOWAIT);
			if (!command) {
				FUNC2(&xhci->lock, flags);
				ret = -ENOMEM;
				goto cmd_cleanup;
			}

			ret = FUNC8(xhci, command, slot_id,
						       i, suspend);
			if (ret) {
				FUNC2(&xhci->lock, flags);
				FUNC6(xhci, command);
				goto cmd_cleanup;
			}
		}
	}
	ret = FUNC8(xhci, cmd, slot_id, 0, suspend);
	if (ret) {
		FUNC2(&xhci->lock, flags);
		goto cmd_cleanup;
	}

	FUNC9(xhci);
	FUNC2(&xhci->lock, flags);

	/* Wait for last stop endpoint command to finish */
	FUNC4(cmd->completion);

	if (cmd->status == COMP_COMMAND_ABORTED ||
	    cmd->status == COMP_COMMAND_RING_STOPPED) {
		FUNC10(xhci, "Timeout while waiting for stop endpoint command\n");
		ret = -ETIME;
	}

cmd_cleanup:
	FUNC6(xhci, cmd);
	return ret;
}