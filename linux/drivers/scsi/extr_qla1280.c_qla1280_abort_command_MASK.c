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
struct srb {int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; } ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 unsigned int BIT_7 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAILBOX_REGISTER_COUNT ; 
 int MBC_ABORT_COMMAND ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRB_ABORT_PENDING ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (struct scsi_qla_host*,int,int*) ; 

__attribute__((used)) static int
FUNC7(struct scsi_qla_host *ha, struct srb * sp, int handle)
{
	uint16_t mb[MAILBOX_REGISTER_COUNT];
	unsigned int bus, target, lun;
	int status;

	FUNC0("qla1280_abort_command");

	bus = FUNC2(sp->cmd);
	target = FUNC4(sp->cmd);
	lun = FUNC3(sp->cmd);

	sp->flags |= SRB_ABORT_PENDING;

	mb[0] = MBC_ABORT_COMMAND;
	mb[1] = (bus ? target | BIT_7 : target) << 8 | lun;
	mb[2] = handle >> 16;
	mb[3] = handle & 0xffff;
	status = FUNC6(ha, 0x0f, &mb[0]);

	if (status) {
		FUNC5(2, "qla1280_abort_command: **** FAILED ****\n");
		sp->flags &= ~SRB_ABORT_PENDING;
	}


	FUNC1("qla1280_abort_command");
	return status;
}