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
struct scsi_cmnd {int dummy; } ;
struct pqi_io_request {int /*<<< orphan*/  status; struct scsi_cmnd* scmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_IMM_RETRY ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_io_request*) ; 
 scalar_t__ FUNC2 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct pqi_io_request *io_request,
	void *context)
{
	struct scsi_cmnd *scmd;

	scmd = io_request->scmd;
	FUNC4(scmd);
	if (io_request->status == -EAGAIN)
		FUNC5(scmd, DID_IMM_RETRY);
	else if (FUNC2(io_request)) {
		FUNC1(io_request);
		return;
	}
	FUNC0(io_request);
	FUNC3(scmd);
}