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
struct scsi_ctrl_blk {int /*<<< orphan*/  sglen; int /*<<< orphan*/  sgmax; scalar_t__ sgidx; scalar_t__ mode; } ;
struct initio_host {int semaph; int /*<<< orphan*/  semaph_lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ TUL_Mask ; 
 int /*<<< orphan*/  FUNC0 (struct initio_host*,struct scsi_ctrl_blk*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct initio_host*) ; 

__attribute__((used)) static void FUNC5(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
	unsigned long flags;

	scb->mode = 0;

	scb->sgidx = 0;
	scb->sgmax = scb->sglen;

	FUNC2(&host->semaph_lock, flags);

	FUNC0(host, scb);	/* Append this SCB to Pending queue */

/* VVVVV 07/21/98 */
	if (host->semaph == 1) {
		/* Disable Jasmin SCSI Int */
		FUNC1(0x1F, host->addr + TUL_Mask);
		host->semaph = 0;
		FUNC3(&host->semaph_lock, flags);

		FUNC4(host);

		FUNC2(&host->semaph_lock, flags);
		host->semaph = 1;
		FUNC1(0x0F, host->addr + TUL_Mask);
	}
	FUNC3(&host->semaph_lock, flags);
	return;
}