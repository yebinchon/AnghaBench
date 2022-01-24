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
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; } ;
struct xhci_slot_ctx {int dummy; } ;
struct xhci_hcd {int quirks; struct xhci_virt_device** devs; int /*<<< orphan*/  lock; int /*<<< orphan*/  num_active_eps; TYPE_1__* cap_regs; } ;
struct xhci_command {int slot_id; scalar_t__ status; int /*<<< orphan*/  completion; } ;
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct usb_device {int slot_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  hcs_params1; } ;

/* Variables and functions */
 scalar_t__ COMP_SUCCESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRB_ENABLE_SLOT ; 
 int XHCI_EP_LIMIT_QUIRK ; 
 int XHCI_RESET_ON_RESUME ; 
 struct xhci_hcd* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct xhci_slot_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct xhci_command* FUNC8 (struct xhci_hcd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_hcd*,int,struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct xhci_hcd*,int) ; 
 int FUNC12 (struct xhci_hcd*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct xhci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct xhci_hcd*,struct xhci_command*) ; 
 int /*<<< orphan*/  FUNC15 (struct xhci_hcd*,int) ; 
 struct xhci_slot_ctx* FUNC16 (struct xhci_hcd*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC19 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC20 (struct xhci_hcd*,char*,...) ; 

int FUNC21(struct usb_hcd *hcd, struct usb_device *udev)
{
	struct xhci_hcd *xhci = FUNC1(hcd);
	struct xhci_virt_device *vdev;
	struct xhci_slot_ctx *slot_ctx;
	unsigned long flags;
	int ret, slot_id;
	struct xhci_command *command;

	command = FUNC8(xhci, true, GFP_KERNEL);
	if (!command)
		return 0;

	FUNC4(&xhci->lock, flags);
	ret = FUNC17(xhci, command, TRB_ENABLE_SLOT, 0);
	if (ret) {
		FUNC5(&xhci->lock, flags);
		FUNC10(xhci, "FIXME: allocate a command ring segment\n");
		FUNC14(xhci, command);
		return 0;
	}
	FUNC19(xhci);
	FUNC5(&xhci->lock, flags);

	FUNC7(command->completion);
	slot_id = command->slot_id;

	if (!slot_id || command->status != COMP_SUCCESS) {
		FUNC13(xhci, "Error while assigning device slot ID\n");
		FUNC13(xhci, "Max number of devices this xHCI host supports is %u.\n",
				FUNC0(
					FUNC3(&xhci->cap_regs->hcs_params1)));
		FUNC14(xhci, command);
		return 0;
	}

	FUNC14(xhci, command);

	if ((xhci->quirks & XHCI_EP_LIMIT_QUIRK)) {
		FUNC4(&xhci->lock, flags);
		ret = FUNC18(xhci);
		if (ret) {
			FUNC5(&xhci->lock, flags);
			FUNC20(xhci, "Not enough host resources, "
					"active endpoint contexts = %u\n",
					xhci->num_active_eps);
			goto disable_slot;
		}
		FUNC5(&xhci->lock, flags);
	}
	/* Use GFP_NOIO, since this function can be called from
	 * xhci_discover_or_reset_device(), which may be called as part of
	 * mass storage driver error handling.
	 */
	if (!FUNC9(xhci, slot_id, udev, GFP_NOIO)) {
		FUNC20(xhci, "Could not allocate xHCI USB device data structures\n");
		goto disable_slot;
	}
	vdev = xhci->devs[slot_id];
	slot_ctx = FUNC16(xhci, vdev->out_ctx);
	FUNC6(slot_ctx);

	udev->slot_id = slot_id;

	FUNC11(xhci, slot_id);

#ifndef CONFIG_USB_DEFAULT_PERSIST
	/*
	 * If resetting upon resume, we can't put the controller into runtime
	 * suspend if there is a device attached.
	 */
	if (xhci->quirks & XHCI_RESET_ON_RESUME)
		FUNC2(hcd->self.controller);
#endif

	/* Is this a LS or FS device under a HS hub? */
	/* Hub or peripherial? */
	return 1;

disable_slot:
	ret = FUNC12(xhci, udev->slot_id);
	if (ret)
		FUNC15(xhci, udev->slot_id);

	return 0;
}