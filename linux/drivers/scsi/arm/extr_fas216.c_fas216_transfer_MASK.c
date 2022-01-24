#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int fasdmatype_t ;
typedef  int /*<<< orphan*/  fasdmadir_t ;
struct TYPE_22__ {int /*<<< orphan*/  this_residual; int /*<<< orphan*/  phase; int /*<<< orphan*/  ptr; } ;
struct TYPE_19__ {scalar_t__ phase; TYPE_7__ SCp; int /*<<< orphan*/  async_stp; } ;
struct TYPE_18__ {int (* setup ) (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int) ;int transfer_type; int /*<<< orphan*/  (* pseudo ) (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_21__ {TYPE_5__* SCpnt; TYPE_4__ scsi; int /*<<< orphan*/  host; TYPE_3__ dma; TYPE_1__* device; } ;
struct TYPE_20__ {int /*<<< orphan*/  transfersize; TYPE_2__* device; TYPE_7__ SCp; } ;
struct TYPE_17__ {size_t id; } ;
struct TYPE_16__ {scalar_t__ sof; } ;
typedef  TYPE_6__ FAS216_Info ;

/* Variables and functions */
 int CMD_TRANSFERINFO ; 
 int CMD_WITHDMA ; 
 int /*<<< orphan*/  DMA_IN ; 
 int /*<<< orphan*/  DMA_OUT ; 
 int LOG_BUFFER ; 
 int LOG_ERROR ; 
 scalar_t__ PHASE_DATAOUT ; 
 int /*<<< orphan*/  REG_SOF ; 
 int /*<<< orphan*/  REG_STP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  fasdma_pio 131 
#define  fasdma_pseudo 130 
#define  fasdma_real_all 129 
#define  fasdma_real_block 128 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,char*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(FAS216_Info *info)
{
	fasdmadir_t direction;
	fasdmatype_t dmatype;

	FUNC1(info, LOG_BUFFER,
		   "starttransfer: buffer %p length 0x%06x reqlen 0x%06x",
		   info->scsi.SCp.ptr, info->scsi.SCp.this_residual,
		   info->scsi.SCp.phase);

	if (!info->scsi.SCp.ptr) {
		FUNC1(info, LOG_ERROR, "null buffer passed to "
			   "fas216_starttransfer");
		FUNC5(&info->scsi.SCp, "SCp: ", "\n");
		FUNC5(&info->SCpnt->SCp, "Cmnd SCp: ", "\n");
		return;
	}

	/*
	 * If we have a synchronous transfer agreement in effect, we must
	 * use DMA mode.  If we are using asynchronous transfers, we may
	 * use DMA mode or PIO mode.
	 */
	if (info->device[info->SCpnt->device->id].sof)
		dmatype = fasdma_real_all;
	else
		dmatype = fasdma_pio;

	if (info->scsi.phase == PHASE_DATAOUT)
		direction = DMA_OUT;
	else
		direction = DMA_IN;

	if (info->dma.setup)
		dmatype = info->dma.setup(info->host, &info->scsi.SCp,
					  direction, dmatype);
	info->dma.transfer_type = dmatype;

	if (dmatype == fasdma_real_all)
		FUNC3(info, info->scsi.SCp.phase);
	else
		FUNC3(info, info->scsi.SCp.this_residual);

	switch (dmatype) {
	case fasdma_pio:
		FUNC1(info, LOG_BUFFER, "PIO transfer");
		FUNC4(info, REG_SOF, 0);
		FUNC4(info, REG_STP, info->scsi.async_stp);
		FUNC0(info, CMD_TRANSFERINFO);
		FUNC2(info, direction);
		break;

	case fasdma_pseudo:
		FUNC1(info, LOG_BUFFER, "pseudo transfer");
		FUNC0(info, CMD_TRANSFERINFO | CMD_WITHDMA);
		info->dma.pseudo(info->host, &info->scsi.SCp,
				 direction, info->SCpnt->transfersize);
		break;

	case fasdma_real_block:
		FUNC1(info, LOG_BUFFER, "block dma transfer");
		FUNC0(info, CMD_TRANSFERINFO | CMD_WITHDMA);
		break;

	case fasdma_real_all:
		FUNC1(info, LOG_BUFFER, "total dma transfer");
		FUNC0(info, CMD_TRANSFERINFO | CMD_WITHDMA);
		break;

	default:
		FUNC1(info, LOG_BUFFER | LOG_ERROR,
			   "invalid FAS216 DMA type");
		break;
	}
}