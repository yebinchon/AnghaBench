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
struct pqi_io_request {struct scsi_cmnd* scmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC3(struct pqi_io_request *io_request,
	void *context)
{
	struct scsi_cmnd *scmd;

	scmd = io_request->scmd;
	FUNC0(io_request);
	FUNC2(scmd);
	FUNC1(scmd);
}