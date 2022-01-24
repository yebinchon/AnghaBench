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
struct sym_ucmd {scalar_t__ eh_done; } ;
struct sym_hcb {int dummy; } ;
struct scsi_pointer {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sym_ucmd* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 

void FUNC5(struct sym_hcb *np, struct scsi_cmnd *cmd)
{
	struct sym_ucmd *ucmd = FUNC1(cmd);
	FUNC0(sizeof(struct scsi_pointer) < sizeof(struct sym_ucmd));

	if (ucmd->eh_done)
		FUNC2(ucmd->eh_done);

	FUNC3(cmd);
	cmd->scsi_done(cmd);
}