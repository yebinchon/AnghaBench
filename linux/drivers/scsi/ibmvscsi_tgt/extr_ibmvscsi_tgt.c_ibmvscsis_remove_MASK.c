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
struct vio_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
struct scsi_info {int /*<<< orphan*/  list; int /*<<< orphan*/  target; int /*<<< orphan*/  work_task; struct scsi_info* map_buf; int /*<<< orphan*/  map_ioba; int /*<<< orphan*/  work_q; int /*<<< orphan*/  unconfig; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  flags; TYPE_1__* dma_dev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_SLEEPING ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  UNCONFIGURING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct scsi_info* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_info*) ; 
 int /*<<< orphan*/  ibmvscsis_dev_lock ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct vio_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct vio_dev *vdev)
{
	struct scsi_info *vscsi = FUNC2(&vdev->dev);

	FUNC1(&vscsi->dev, "remove (%s)\n", FUNC3(&vscsi->dma_dev->dev));

	FUNC12(&vscsi->intr_lock);
	FUNC9(vscsi, UNCONFIGURING, 0);
	vscsi->flags |= CFG_SLEEPING;
	FUNC13(&vscsi->intr_lock);
	FUNC17(&vscsi->unconfig);

	FUNC16(vdev);
	FUNC5(vdev->irq, vscsi);
	FUNC0(vscsi->work_q);
	FUNC4(&vdev->dev, vscsi->map_ioba, PAGE_SIZE,
			 DMA_BIDIRECTIONAL);
	FUNC10(vscsi->map_buf);
	FUNC15(&vscsi->work_task);
	FUNC6(vscsi);
	FUNC8(vscsi);
	FUNC7(vscsi);
	FUNC14(&vscsi->target);
	FUNC12(&ibmvscsis_dev_lock);
	FUNC11(&vscsi->list);
	FUNC13(&ibmvscsis_dev_lock);
	FUNC10(vscsi);

	return 0;
}