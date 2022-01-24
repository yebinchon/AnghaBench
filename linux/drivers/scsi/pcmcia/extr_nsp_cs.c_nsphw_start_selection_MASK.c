#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {int SelectionTimeOut; } ;
typedef  TYPE_4__ nsp_hw_data ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {unsigned int this_id; unsigned int io_port; scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARBITSTATUS ; 
 unsigned char ARBIT_FAIL ; 
 int ARBIT_FLAG_CLEAR ; 
 int ARBIT_GO ; 
 unsigned char ARBIT_WIN ; 
 int FUNC0 (unsigned char) ; 
 unsigned char BUSMON_BUS_FREE ; 
 int FALSE ; 
 int /*<<< orphan*/  PH_ARBSTART ; 
 int /*<<< orphan*/  PH_SELSTART ; 
 int /*<<< orphan*/  SCSIBUSCTRL ; 
 int /*<<< orphan*/  SCSIBUSMON ; 
 int /*<<< orphan*/  SCSIDATALATCH ; 
 int SCSI_ATN ; 
 int SCSI_BSY ; 
 int SCSI_DATAOUT_ENB ; 
 int SCSI_SEL ; 
 int /*<<< orphan*/  SETARBIT ; 
 int TRUE ; 
 unsigned char FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*,int) ; 
 unsigned char FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *SCpnt)
{
	unsigned int  host_id	 = SCpnt->device->host->this_id;
	unsigned int  base	 = SCpnt->device->host->io_port;
	unsigned char target	 = FUNC4(SCpnt);
	nsp_hw_data  *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
	int	      time_out;
	unsigned char phase, arbit;

	//nsp_dbg(NSP_DEBUG_RESELECTION, "in");

	phase = FUNC1(base, SCSIBUSMON);
	if(phase != BUSMON_BUS_FREE) {
		//nsp_dbg(NSP_DEBUG_RESELECTION, "bus busy");
		return FALSE;
	}

	/* start arbitration */
	//nsp_dbg(NSP_DEBUG_RESELECTION, "start arbit");
	SCpnt->SCp.phase = PH_ARBSTART;
	FUNC2(base, SETARBIT, ARBIT_GO);

	time_out = 1000;
	do {
		/* XXX: what a stupid chip! */
		arbit = FUNC1(base, ARBITSTATUS);
		//nsp_dbg(NSP_DEBUG_RESELECTION, "arbit=%d, wait_count=%d", arbit, wait_count);
		FUNC5(1); /* hold 1.2us */
	} while((arbit & (ARBIT_WIN | ARBIT_FAIL)) == 0 &&
		(time_out-- != 0));

	if (!(arbit & ARBIT_WIN)) {
		//nsp_dbg(NSP_DEBUG_RESELECTION, "arbit fail");
		FUNC2(base, SETARBIT, ARBIT_FLAG_CLEAR);
		return FALSE;
	}

	/* assert select line */
	//nsp_dbg(NSP_DEBUG_RESELECTION, "assert SEL line");
	SCpnt->SCp.phase = PH_SELSTART;
	FUNC5(3); /* wait 2.4us */
	FUNC2(base, SCSIDATALATCH, FUNC0(host_id) | FUNC0(target));
	FUNC2(base, SCSIBUSCTRL,   SCSI_SEL | SCSI_BSY                    | SCSI_ATN);
	FUNC5(2); /* wait >1.2us */
	FUNC2(base, SCSIBUSCTRL,   SCSI_SEL | SCSI_BSY | SCSI_DATAOUT_ENB | SCSI_ATN);
	FUNC2(base, SETARBIT,	     ARBIT_FLAG_CLEAR);
	/*udelay(1);*/ /* wait >90ns */
	FUNC2(base, SCSIBUSCTRL,   SCSI_SEL            | SCSI_DATAOUT_ENB | SCSI_ATN);

	/* check selection timeout */
	FUNC3(SCpnt, 1000/51);
	data->SelectionTimeOut = 1;

	return TRUE;
}