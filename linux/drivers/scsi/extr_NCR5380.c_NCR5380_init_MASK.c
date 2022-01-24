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
struct Scsi_Host {int max_lun; int this_id; int irq; TYPE_1__* hostt; int /*<<< orphan*/  sg_tablesize; int /*<<< orphan*/  cmd_per_lun; int /*<<< orphan*/  can_queue; int /*<<< orphan*/  host_no; } ;
struct NCR5380_hostdata {int id_mask; int id_higher_mask; int flags; unsigned long poll_loops; int /*<<< orphan*/  info; int /*<<< orphan*/  base; int /*<<< orphan*/  io_port; int /*<<< orphan*/  work_q; int /*<<< orphan*/  main_task; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  unissued; int /*<<< orphan*/  autosense; int /*<<< orphan*/ * sensing; int /*<<< orphan*/ * connected; int /*<<< orphan*/  lock; scalar_t__ dma_len; scalar_t__* busy; struct Scsi_Host* host; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FLAG_DMA_FIXUP ; 
 int FLAG_NO_PSEUDO_DMA ; 
 int FLAG_TOSHIBA_DELAY ; 
 int /*<<< orphan*/  ICR_BASE ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MODE_REG ; 
 int /*<<< orphan*/  MR_BASE ; 
 unsigned long NCR5380_REG_POLL_TIME ; 
 int /*<<< orphan*/  NCR5380_main ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SELECT_ENABLE_REG ; 
 int /*<<< orphan*/  STATUS_REG ; 
 int /*<<< orphan*/  TARGET_COMMAND_REG ; 
 int WQ_MEM_RECLAIM ; 
 int WQ_UNBOUND ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int jiffies ; 
 scalar_t__ FUNC6 (int) ; 
 struct NCR5380_hostdata* FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (unsigned long) ; 

__attribute__((used)) static int FUNC11(struct Scsi_Host *instance, int flags)
{
	struct NCR5380_hostdata *hostdata = FUNC7(instance);
	int i;
	unsigned long deadline;
	unsigned long accesses_per_ms;

	instance->max_lun = 7;

	hostdata->host = instance;
	hostdata->id_mask = 1 << instance->this_id;
	hostdata->id_higher_mask = 0;
	for (i = hostdata->id_mask; i <= 0x80; i <<= 1)
		if (i > hostdata->id_mask)
			hostdata->id_higher_mask |= i;
	for (i = 0; i < 8; ++i)
		hostdata->busy[i] = 0;
	hostdata->dma_len = 0;

	FUNC9(&hostdata->lock);
	hostdata->connected = NULL;
	hostdata->sensing = NULL;
	FUNC0(&hostdata->autosense);
	FUNC0(&hostdata->unissued);
	FUNC0(&hostdata->disconnected);

	hostdata->flags = flags;

	FUNC1(&hostdata->main_task, NCR5380_main);
	hostdata->work_q = FUNC4("ncr5380_%d",
	                        WQ_UNBOUND | WQ_MEM_RECLAIM,
	                        1, instance->host_no);
	if (!hostdata->work_q)
		return -ENOMEM;

	FUNC8(hostdata->info, sizeof(hostdata->info),
		"%s, irq %d, io_port 0x%lx, base 0x%lx, can_queue %d, cmd_per_lun %d, sg_tablesize %d, this_id %d, flags { %s%s%s}",
		instance->hostt->name, instance->irq, hostdata->io_port,
		hostdata->base, instance->can_queue, instance->cmd_per_lun,
		instance->sg_tablesize, instance->this_id,
		hostdata->flags & FLAG_DMA_FIXUP     ? "DMA_FIXUP "     : "",
		hostdata->flags & FLAG_NO_PSEUDO_DMA ? "NO_PSEUDO_DMA " : "",
		hostdata->flags & FLAG_TOSHIBA_DELAY ? "TOSHIBA_DELAY " : "");

	FUNC3(INITIATOR_COMMAND_REG, ICR_BASE);
	FUNC3(MODE_REG, MR_BASE);
	FUNC3(TARGET_COMMAND_REG, 0);
	FUNC3(SELECT_ENABLE_REG, 0);

	/* Calibrate register polling loop */
	i = 0;
	deadline = jiffies + 1;
	do {
		FUNC5();
	} while (FUNC10(deadline));
	deadline += FUNC6(256);
	do {
		FUNC2(STATUS_REG);
		++i;
		FUNC5();
	} while (FUNC10(deadline));
	accesses_per_ms = i / 256;
	hostdata->poll_loops = NCR5380_REG_POLL_TIME * accesses_per_ms / 2;

	return 0;
}