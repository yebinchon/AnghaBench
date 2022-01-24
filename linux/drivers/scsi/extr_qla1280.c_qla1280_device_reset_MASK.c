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
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int BIT_0 ; 
 int BIT_1 ; 
 int BIT_2 ; 
 int BIT_7 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAILBOX_REGISTER_COUNT ; 
 int MBC_ABORT_TARGET ; 
 int /*<<< orphan*/  MK_SYNC_ID ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct scsi_qla_host*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct scsi_qla_host *ha, int bus, int target)
{
	uint16_t mb[MAILBOX_REGISTER_COUNT];
	int status;

	FUNC0("qla1280_device_reset");

	mb[0] = MBC_ABORT_TARGET;
	mb[1] = (bus ? (target | BIT_7) : target) << 8;
	mb[2] = 1;
	status = FUNC3(ha, BIT_2 | BIT_1 | BIT_0, &mb[0]);

	/* Issue marker command. */
	FUNC4(ha, bus, target, 0, MK_SYNC_ID);

	if (status)
		FUNC2(2, "qla1280_device_reset: **** FAILED ****\n");

	FUNC1("qla1280_device_reset");
	return status;
}