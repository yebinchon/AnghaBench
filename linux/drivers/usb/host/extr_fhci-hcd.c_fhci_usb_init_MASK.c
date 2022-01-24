#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct fhci_usb {int saved_msk; TYPE_3__* fhci; TYPE_4__* actual_frame; int /*<<< orphan*/  sw_transaction_time; int /*<<< orphan*/  max_frame_usage; int /*<<< orphan*/  port_status; } ;
struct fhci_hcd {TYPE_1__* pram; struct fhci_usb* usb_lld; } ;
struct TYPE_8__ {int /*<<< orphan*/  tds_list; } ;
struct TYPE_7__ {TYPE_2__* regs; int /*<<< orphan*/  pram; } ;
struct TYPE_6__ {int /*<<< orphan*/  usb_usber; int /*<<< orphan*/  usb_usbmr; int /*<<< orphan*/  usb_usmod; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx_state; int /*<<< orphan*/  frame_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_DATA_MEM ; 
 int /*<<< orphan*/  DEFAULT_RING_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FHCI_PORT_DISABLED ; 
 int /*<<< orphan*/  FHCI_PRAM_SIZE ; 
 int /*<<< orphan*/  FRAME_TIME_USAGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SW_FIX_TIME_BETWEEN_TRANSACTION ; 
 int USB_E_IDLE_MASK ; 
 int USB_E_MSF_MASK ; 
 int USB_E_RESET_MASK ; 
 int USB_E_SFT_MASK ; 
 int USB_E_TXB_MASK ; 
 int USB_E_TXE1_MASK ; 
 int USB_MODE_EN ; 
 int USB_MODE_HOST ; 
 scalar_t__ FUNC1 (struct fhci_usb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fhci_usb*) ; 
 TYPE_4__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct fhci_hcd *fhci)
{
	struct fhci_usb *usb = fhci->usb_lld;

	FUNC4(usb->fhci->pram, 0, FHCI_PRAM_SIZE);

	usb->port_status = FHCI_PORT_DISABLED;
	usb->max_frame_usage = FRAME_TIME_USAGE;
	usb->sw_transaction_time = SW_FIX_TIME_BETWEEN_TRANSACTION;

	usb->actual_frame = FUNC3(sizeof(*usb->actual_frame), GFP_KERNEL);
	if (!usb->actual_frame) {
		FUNC2(usb);
		return -ENOMEM;
	}

	FUNC0(&usb->actual_frame->tds_list);

	/* initializing registers on chip, clear frame number */
	FUNC6(&fhci->pram->frame_num, 0);

	/* clear rx state */
	FUNC7(&fhci->pram->rx_state, 0);

	/* set mask register */
	usb->saved_msk = (USB_E_TXB_MASK |
			  USB_E_TXE1_MASK |
			  USB_E_IDLE_MASK |
			  USB_E_RESET_MASK | USB_E_SFT_MASK | USB_E_MSF_MASK);

	FUNC5(&usb->fhci->regs->usb_usmod, USB_MODE_HOST | USB_MODE_EN);

	/* clearing the mask register */
	FUNC6(&usb->fhci->regs->usb_usbmr, 0);

	/* initialing the event register */
	FUNC6(&usb->fhci->regs->usb_usber, 0xffff);

	if (FUNC1(usb, DEFAULT_DATA_MEM, DEFAULT_RING_LEN) != 0) {
		FUNC2(usb);
		return -EINVAL;
	}

	return 0;
}