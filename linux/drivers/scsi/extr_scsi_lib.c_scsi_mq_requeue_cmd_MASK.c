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
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {int rq_flags; } ;

/* Variables and functions */
 int RQF_DONTPREP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(struct scsi_cmnd *cmd)
{
	if (cmd->request->rq_flags & RQF_DONTPREP) {
		cmd->request->rq_flags &= ~RQF_DONTPREP;
		FUNC2(cmd);
	} else {
		FUNC0(true);
	}
	FUNC1(cmd->request, true);
}