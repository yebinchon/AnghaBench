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
typedef  int u32 ;
struct scsi_ctrl_blk {int flags; int buflen; int bufptr; int next_state; scalar_t__ sglen; } ;
struct initio_host {scalar_t__ addr; struct scsi_ctrl_blk* active; } ;

/* Variables and functions */
 int SCF_DIN ; 
 int SCF_DIR ; 
 int SCF_SG ; 
 int /*<<< orphan*/  TAX_SG_OUT ; 
 int /*<<< orphan*/  TAX_X_OUT ; 
 int /*<<< orphan*/  TSC_XF_DMA_OUT ; 
 scalar_t__ TUL_SCmd ; 
 scalar_t__ TUL_SCnt0 ; 
 scalar_t__ TUL_XAddH ; 
 scalar_t__ TUL_XCmd ; 
 scalar_t__ TUL_XCntH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct initio_host * host)
{
	struct scsi_ctrl_blk *scb = host->active;

	if ((scb->flags & SCF_DIR) == SCF_DIN)
		return 6;	/* wrong direction */

	FUNC1(scb->buflen, host->addr + TUL_SCnt0);
	FUNC0(TSC_XF_DMA_OUT, host->addr + TUL_SCmd);

	if (scb->flags & SCF_SG) {	/* S/G xfer */
		FUNC1(((u32) scb->sglen) << 3, host->addr + TUL_XCntH);
		FUNC1(scb->bufptr, host->addr + TUL_XAddH);
		FUNC0(TAX_SG_OUT, host->addr + TUL_XCmd);
	} else {
		FUNC1(scb->buflen, host->addr + TUL_XCntH);
		FUNC1(scb->bufptr, host->addr + TUL_XAddH);
		FUNC0(TAX_X_OUT, host->addr + TUL_XCmd);
	}

	scb->next_state = 0x5;
	return 0;		/* return to OS, wait xfer done , let jas_isr come in */
}