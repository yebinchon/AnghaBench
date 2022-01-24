#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
struct nozomi {int index_start; int /*<<< orphan*/  base_addr; struct nozomi* send_buf; TYPE_1__* port; int /*<<< orphan*/  reg_fcr; int /*<<< orphan*/  reg_ier; scalar_t__ last_ier; } ;
struct ctrl_ul {int port; int DTR; scalar_t__ RTS; scalar_t__ reserved; } ;
struct TYPE_2__ {int /*<<< orphan*/  fifo_ul; int /*<<< orphan*/ * ul_addr; } ;

/* Variables and functions */
 scalar_t__ CTRL_UL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAX_PORT ; 
 size_t PORT_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nozomi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nozomi*) ; 
 int /*<<< orphan*/ ** ndevs ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct nozomi* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC9 (struct nozomi*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct pci_dev *pdev)
{
	int i;
	struct ctrl_ul ctrl;
	struct nozomi *dc = FUNC6(pdev);

	/* Disable all interrupts */
	dc->last_ier = 0;
	FUNC11(dc->last_ier, dc->reg_ier);

	FUNC9(dc);

	/* Send 0x0001, command card to resend the reset token.  */
	/* This is to get the reset when the module is reloaded. */
	ctrl.port = 0x00;
	ctrl.reserved = 0;
	ctrl.RTS = 0;
	ctrl.DTR = 1;
	FUNC0("sending flow control 0x%04X", *((u16 *)&ctrl));

	/* Setup dc->reg addresses to we can use defines here */
	FUNC10(dc->port[PORT_CTRL].ul_addr[0], (u32 *)&ctrl, 2);
	FUNC11(CTRL_UL, dc->reg_fcr);	/* push the token to the card. */

	FUNC8(dc);

	FUNC1(pdev->irq, dc);

	for (i = 0; i < MAX_PORT; i++)
		FUNC3(&dc->port[i].fifo_ul);

	FUNC4(dc->send_buf);

	FUNC2(dc->base_addr);

	FUNC7(pdev);

	FUNC5(pdev);

	ndevs[dc->index_start / MAX_PORT] = NULL;

	FUNC4(dc);
}