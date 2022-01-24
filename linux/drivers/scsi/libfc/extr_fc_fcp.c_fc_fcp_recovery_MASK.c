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
typedef  int /*<<< orphan*/  u8 ;
struct fc_fcp_pkt {scalar_t__ io_status; scalar_t__ cdb_status; int /*<<< orphan*/  status_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*) ; 

__attribute__((used)) static void FUNC2(struct fc_fcp_pkt *fsp, u8 code)
{
	FUNC0(fsp, "start recovery code %x\n", code);
	fsp->status_code = code;
	fsp->cdb_status = 0;
	fsp->io_status = 0;
	/*
	 * if this fails then we let the scsi command timer fire and
	 * scsi-ml escalate.
	 */
	FUNC1(fsp);
}