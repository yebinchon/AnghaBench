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
struct scsi_pointer {int this_residual; } ;
struct TYPE_3__ {int dma; } ;
struct TYPE_4__ {TYPE_1__ scsi; } ;
struct eesoxscsi_info {int /*<<< orphan*/ * sg; TYPE_2__ info; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  scalar_t__ fasdmatype_t ;
typedef  scalar_t__ fasdmadir_t ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_MODE_READ ; 
 int DMA_MODE_WRITE ; 
 scalar_t__ DMA_OUT ; 
 int DMA_TO_DEVICE ; 
 int NO_DMA ; 
 int /*<<< orphan*/  NR_SG ; 
 int FUNC0 (int /*<<< orphan*/ *,struct scsi_pointer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ fasdma_pseudo ; 
 scalar_t__ fasdma_real_all ; 
 struct device* FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static fasdmatype_t
FUNC7(struct Scsi_Host *host, struct scsi_pointer *SCp,
		       fasdmadir_t direction, fasdmatype_t min_type)
{
	struct eesoxscsi_info *info = (struct eesoxscsi_info *)host->hostdata;
	struct device *dev = FUNC4(host);
	int dmach = info->info.scsi.dma;

	if (dmach != NO_DMA &&
	    (min_type == fasdma_real_all || SCp->this_residual >= 512)) {
		int bufs, map_dir, dma_dir;

		bufs = FUNC0(&info->sg[0], SCp, NR_SG);

		if (direction == DMA_OUT)
			map_dir = DMA_TO_DEVICE,
			dma_dir = DMA_MODE_WRITE;
		else
			map_dir = DMA_FROM_DEVICE,
			dma_dir = DMA_MODE_READ;

		FUNC2(dev, info->sg, bufs, map_dir);

		FUNC1(dmach);
		FUNC6(dmach, info->sg, bufs);
		FUNC5(dmach, dma_dir);
		FUNC3(dmach);
		return fasdma_real_all;
	}
	/*
	 * We don't do DMA, we only do slow PIO
	 *
	 * Some day, we will do Pseudo DMA
	 */
	return fasdma_pseudo;
}