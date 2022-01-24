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
typedef  int u8 ;
struct ccb {int dummy; } ;
struct aha1542_hostdata {scalar_t__ mb_handle; TYPE_1__* mb; scalar_t__ ccb_handle; } ;
struct Scsi_Host {int /*<<< orphan*/  io_port; } ;
struct TYPE_2__ {int* ccbptr; scalar_t__ status; } ;

/* Variables and functions */
 int AHA1542_MAILBOXES ; 
 int CMD_MBINIT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct Scsi_Host*,char*) ; 
 struct aha1542_hostdata* FUNC4 (struct Scsi_Host*) ; 

__attribute__((used)) static void FUNC5(struct Scsi_Host *sh)
{
	struct aha1542_hostdata *aha1542 = FUNC4(sh);
	u8 mb_cmd[5] = { CMD_MBINIT, AHA1542_MAILBOXES, 0, 0, 0};
	int i;

	for (i = 0; i < AHA1542_MAILBOXES; i++) {
		aha1542->mb[i].status = 0;
		FUNC2(aha1542->mb[i].ccbptr,
			 aha1542->ccb_handle + i * sizeof(struct ccb));
		aha1542->mb[AHA1542_MAILBOXES + i].status = 0;
	};
	FUNC0(sh->io_port);	/* reset interrupts, so they don't block */
	FUNC2(mb_cmd + 2, aha1542->mb_handle);
	if (FUNC1(sh->io_port, mb_cmd, 5))
		FUNC3(KERN_ERR, sh, "failed setting up mailboxes\n");
	FUNC0(sh->io_port);
}