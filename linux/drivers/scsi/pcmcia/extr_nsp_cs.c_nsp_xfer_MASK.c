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
struct TYPE_7__ {scalar_t__ phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {char* MsgBuffer; int /*<<< orphan*/  MsgLen; } ;
typedef  TYPE_4__ nsp_hw_data ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {unsigned int io_port; scalar_t__ hostdata; } ;

/* Variables and functions */
 char ACKENB ; 
 char AUTODIRECTION ; 
 int /*<<< orphan*/  BUSMON_ACK ; 
 int BUSMON_IO ; 
 int /*<<< orphan*/  BUSMON_REQ ; 
 int /*<<< orphan*/  MSGBUF_SIZE ; 
 int /*<<< orphan*/  NSP_DEBUG_DATA_IO ; 
 scalar_t__ PH_MSG_OUT ; 
 int /*<<< orphan*/  SCSIBUSCTRL ; 
 int /*<<< orphan*/  SCSIDATAWITHACK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct scsi_cmnd*,int,int /*<<< orphan*/ ) ; 
 char FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct scsi_cmnd *SCpnt, int phase)
{
	unsigned int  base = SCpnt->device->host->io_port;
	nsp_hw_data  *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
	char	     *buf  = data->MsgBuffer;
	int	      len  = FUNC0(MSGBUF_SIZE, data->MsgLen);
	int	      ptr;
	int	      ret;

	//nsp_dbg(NSP_DEBUG_DATA_IO, "in");
	for (ptr = 0; len > 0; len--, ptr++) {

		ret = FUNC2(SCpnt, phase, BUSMON_REQ);
		if (ret <= 0) {
			FUNC1(NSP_DEBUG_DATA_IO, "xfer quit");
			return 0;
		}

		/* if last byte, negate ATN */
		if (len == 1 && SCpnt->SCp.phase == PH_MSG_OUT) {
			FUNC4(base, SCSIBUSCTRL, AUTODIRECTION | ACKENB);
		}

		/* read & write message */
		if (phase & BUSMON_IO) {
			FUNC1(NSP_DEBUG_DATA_IO, "read msg");
			buf[ptr] = FUNC3(base, SCSIDATAWITHACK);
		} else {
			FUNC1(NSP_DEBUG_DATA_IO, "write msg");
			FUNC4(base, SCSIDATAWITHACK, buf[ptr]);
		}
		FUNC5(SCpnt, BUSMON_ACK, "xfer<ack>");

	}
	return len;
}