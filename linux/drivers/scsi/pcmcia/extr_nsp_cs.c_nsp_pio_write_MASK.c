#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int ptr; scalar_t__ this_residual; scalar_t__ buffers_residual; TYPE_5__* buffer; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_10__ {int FifoCount; int TransferMode; int CmdId; } ;
typedef  TYPE_4__ nsp_hw_data ;
struct TYPE_11__ {scalar_t__ length; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_7__ {unsigned int io_port; unsigned long base; scalar_t__ hostdata; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BUFFER_ADDR ; 
 unsigned char BUSMON_PHASE_MASK ; 
 unsigned char BUSPHASE_DATA_OUT ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
#define  MODE_IO32 130 
#define  MODE_IO8 129 
#define  MODE_MEM32 128 
 int /*<<< orphan*/  NSP_DEBUG_DATA_IO ; 
 int /*<<< orphan*/  SCSIBUSMON ; 
 int /*<<< orphan*/  WFIFO_CRIT ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int) ; 
 int FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*,int) ; 
 unsigned char FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (struct scsi_cmnd*) ; 
 TYPE_5__* FUNC11 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC12(struct scsi_cmnd *SCpnt)
{
	unsigned int  base      = SCpnt->device->host->io_port;
	unsigned long mmio_base = SCpnt->device->host->base;
	nsp_hw_data  *data      = (nsp_hw_data *)SCpnt->device->host->hostdata;
	int	      time_out;
	int           ocount, res;
	unsigned char stat;

	ocount	 = data->FifoCount;

	FUNC2(NSP_DEBUG_DATA_IO, "in fifocount=%d ptr=0x%p this_residual=%d buffers=0x%p nbuf=%d resid=0x%x",
		data->FifoCount, SCpnt->SCp.ptr, SCpnt->SCp.this_residual,
		SCpnt->SCp.buffer, SCpnt->SCp.buffers_residual,
		FUNC10(SCpnt));

	time_out = 1000;

	while ((time_out-- != 0) &&
	       (SCpnt->SCp.this_residual > 0 || SCpnt->SCp.buffers_residual > 0)) {
		stat = FUNC7(base, SCSIBUSMON);
		stat &= BUSMON_PHASE_MASK;

		if (stat != BUSPHASE_DATA_OUT) {
			res = ocount - FUNC5(SCpnt);

			FUNC2(NSP_DEBUG_DATA_IO, "phase changed stat=0x%x, res=%d\n", stat, res);
			/* Put back pointer */
			FUNC6(SCpnt, res);
			SCpnt->SCp.ptr		 -= res;
			SCpnt->SCp.this_residual += res;
			ocount			 -= res;

			break;
		}

		res = ocount - FUNC5(SCpnt);
		if (res > 0) { /* write all data? */
			FUNC2(NSP_DEBUG_DATA_IO, "wait for all data out. ocount=0x%x res=%d", ocount, res);
			continue;
		}

		res = FUNC1(SCpnt->SCp.this_residual, WFIFO_CRIT);

		//nsp_dbg(NSP_DEBUG_DATA_IO, "ptr=0x%p this=0x%x res=0x%x", SCpnt->SCp.ptr, SCpnt->SCp.this_residual, res);
		switch (data->TransferMode) {
		case MODE_IO32:
			res &= ~(FUNC0(1)|FUNC0(0)); /* align 4 */
			FUNC3(base, SCpnt->SCp.ptr, res >> 2);
			break;
		case MODE_IO8:
			FUNC4 (base, SCpnt->SCp.ptr, res     );
			break;

		case MODE_MEM32:
			res &= ~(FUNC0(1)|FUNC0(0)); /* align 4 */
			FUNC8(mmio_base, SCpnt->SCp.ptr, res >> 2);
			break;

		default:
			FUNC2(NSP_DEBUG_DATA_IO, "unknown write mode");
			break;
		}

		FUNC6(SCpnt, -res);
		SCpnt->SCp.ptr		 += res;
		SCpnt->SCp.this_residual -= res;
		ocount			 += res;

		/* go to next scatter list if available */
		if (SCpnt->SCp.this_residual	== 0 &&
		    SCpnt->SCp.buffers_residual != 0 ) {
			//nsp_dbg(NSP_DEBUG_DATA_IO, "scatterlist next");
			SCpnt->SCp.buffers_residual--;
			SCpnt->SCp.buffer = FUNC11(SCpnt->SCp.buffer);
			SCpnt->SCp.ptr		 = BUFFER_ADDR;
			SCpnt->SCp.this_residual = SCpnt->SCp.buffer->length;
			time_out = 1000;
		}
	}

	data->FifoCount = ocount;

	if (time_out < 0) {
		FUNC9(KERN_DEBUG, "pio write timeout resid=0x%x",
		                                        FUNC10(SCpnt));
	}
	FUNC2(NSP_DEBUG_DATA_IO, "write ocount=0x%x", ocount);
	FUNC2(NSP_DEBUG_DATA_IO, "w cmd=%d resid=0x%x\n", data->CmdId,
	                                                FUNC10(SCpnt));
}