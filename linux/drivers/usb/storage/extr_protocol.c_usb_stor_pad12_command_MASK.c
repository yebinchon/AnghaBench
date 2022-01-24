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
struct us_data {int dummy; } ;
struct scsi_cmnd {int cmd_len; scalar_t__* cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,struct us_data*) ; 

void FUNC1(struct scsi_cmnd *srb, struct us_data *us)
{
	/*
	 * Pad the SCSI command with zeros out to 12 bytes.  If the
	 * command already is 12 bytes or longer, leave it alone.
	 *
	 * NOTE: This only works because a scsi_cmnd struct field contains
	 * a unsigned char cmnd[16], so we know we have storage available
	 */
	for (; srb->cmd_len < 12; srb->cmd_len++)
		srb->cmnd[srb->cmd_len] = 0;

	/* send the command to the transport layer */
	FUNC0(srb, us);
}