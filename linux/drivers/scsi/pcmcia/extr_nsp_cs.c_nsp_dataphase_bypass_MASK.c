#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ have_data_in; int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_9__ {unsigned int FifoCount; } ;
typedef  TYPE_4__ nsp_hw_data ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IO_IN ; 
 int /*<<< orphan*/  NSP_DEBUG_DATA_IO ; 
 int /*<<< orphan*/  PH_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *SCpnt)
{
	nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
	unsigned int count;

	//nsp_dbg(NSP_DEBUG_DATA_IO, "in");

	if (SCpnt->SCp.have_data_in != IO_IN) {
		return 0;
	}

	count = FUNC1(SCpnt);
	if (data->FifoCount == count) {
		//nsp_dbg(NSP_DEBUG_DATA_IO, "not use bypass quirk");
		return 0;
	}

	/*
	 * XXX: NSP_QUIRK
	 * data phase skip only occures in case of SCSI_LOW_READ
	 */
	FUNC0(NSP_DEBUG_DATA_IO, "use bypass quirk");
	SCpnt->SCp.phase = PH_DATA;
	FUNC2(SCpnt);
	FUNC3(data, FALSE);

	return 0;
}