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
typedef  int uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_INTX_DISABLE ; 
 int PCI_COMMAND_PARITY ; 
 int PCI_COMMAND_SERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 

void FUNC5(struct scsi_qla_host *ha)
{
	uint16_t w;
	int status;

	FUNC4(KERN_INFO, ha, "Configuring PCI space...\n");

	FUNC1(ha->pdev);
	status = FUNC2(ha->pdev);
	/*
	 * We want to respect framework's setting of PCI configuration space
	 * command register and also want to make sure that all bits of
	 * interest to us are properly set in command register.
	 */
	FUNC0(ha->pdev, PCI_COMMAND, &w);
	w |= PCI_COMMAND_PARITY | PCI_COMMAND_SERR;
	w &= ~PCI_COMMAND_INTX_DISABLE;
	FUNC3(ha->pdev, PCI_COMMAND, w);
}