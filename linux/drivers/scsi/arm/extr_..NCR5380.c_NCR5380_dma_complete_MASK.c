#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
struct NCR5380_hostdata {int read_overruns; int dma_len; TYPE_2__* connected; } ;
struct TYPE_3__ {unsigned char phase; int this_residual; int /*<<< orphan*/  ptr; } ;
struct TYPE_4__ {TYPE_1__ SCp; int /*<<< orphan*/  request; } ;

/* Variables and functions */
 unsigned char BASR_ACK ; 
 unsigned char BASR_PHASE_MATCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  BUS_AND_STATUS_REG ; 
 int /*<<< orphan*/  ICR_BASE ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 int /*<<< orphan*/  INPUT_DATA_REG ; 
 int /*<<< orphan*/  MODE_REG ; 
 int /*<<< orphan*/  MR_BASE ; 
 int FUNC1 (struct NCR5380_hostdata*) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Scsi_Host*,unsigned char*,int*,unsigned char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDEBUG_DMA ; 
 unsigned char PHASE_MASK ; 
 int /*<<< orphan*/  RESET_PARITY_INTERRUPT_REG ; 
 unsigned char SR_IO ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct NCR5380_hostdata* FUNC8 (struct Scsi_Host*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct Scsi_Host *instance)
{
	struct NCR5380_hostdata *hostdata = FUNC8(instance);
	int transferred;
	unsigned char **data;
	int *count;
	int saved_data = 0, overrun = 0;
	unsigned char p;

	if (hostdata->read_overruns) {
		p = hostdata->connected->SCp.phase;
		if (p & SR_IO) {
			FUNC10(10);
			if ((FUNC2(BUS_AND_STATUS_REG) &
			     (BASR_PHASE_MATCH | BASR_ACK)) ==
			    (BASR_PHASE_MATCH | BASR_ACK)) {
				saved_data = FUNC2(INPUT_DATA_REG);
				overrun = 1;
				FUNC5(NDEBUG_DMA, instance, "read overrun handled\n");
			}
		}
	}

#ifdef CONFIG_SUN3
	if ((sun3scsi_dma_finish(rq_data_dir(hostdata->connected->request)))) {
		pr_err("scsi%d: overrun in UDC counter -- not prepared to deal with this!\n",
		       instance->host_no);
		BUG();
	}

	if ((NCR5380_read(BUS_AND_STATUS_REG) & (BASR_PHASE_MATCH | BASR_ACK)) ==
	    (BASR_PHASE_MATCH | BASR_ACK)) {
		pr_err("scsi%d: BASR %02x\n", instance->host_no,
		       NCR5380_read(BUS_AND_STATUS_REG));
		pr_err("scsi%d: bus stuck in data phase -- probably a single byte overrun!\n",
		       instance->host_no);
		BUG();
	}
#endif

	FUNC4(MODE_REG, MR_BASE);
	FUNC4(INITIATOR_COMMAND_REG, ICR_BASE);
	FUNC2(RESET_PARITY_INTERRUPT_REG);

	transferred = hostdata->dma_len - FUNC1(hostdata);
	hostdata->dma_len = 0;

	data = (unsigned char **)&hostdata->connected->SCp.ptr;
	count = &hostdata->connected->SCp.this_residual;
	*data += transferred;
	*count -= transferred;

	if (hostdata->read_overruns) {
		int cnt, toPIO;

		if ((FUNC2(STATUS_REG) & PHASE_MASK) == p && (p & SR_IO)) {
			cnt = toPIO = hostdata->read_overruns;
			if (overrun) {
				FUNC5(NDEBUG_DMA, instance,
				         "Got an input overrun, using saved byte\n");
				*(*data)++ = saved_data;
				(*count)--;
				cnt--;
				toPIO--;
			}
			if (toPIO > 0) {
				FUNC5(NDEBUG_DMA, instance,
				         "Doing %d byte PIO to 0x%p\n", cnt, *data);
				FUNC3(instance, &p, &cnt, data);
				*count -= toPIO - cnt;
			}
		}
	}
}