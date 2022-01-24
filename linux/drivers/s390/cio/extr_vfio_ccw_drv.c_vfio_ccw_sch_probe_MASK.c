#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {struct vfio_ccw_private* guest_cp; } ;
struct vfio_ccw_private {TYPE_3__ cp; void* io_region; void* cmd_region; int /*<<< orphan*/  state; int /*<<< orphan*/  avail; int /*<<< orphan*/  io_work; int /*<<< orphan*/  io_mutex; struct subchannel* sch; } ;
struct TYPE_5__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; int /*<<< orphan*/  cssid; } ;
struct pmcw {scalar_t__ qf; } ;
struct TYPE_4__ {struct pmcw pmcw; } ;
struct subchannel {int /*<<< orphan*/  dev; TYPE_2__ schid; int /*<<< orphan*/  lock; int /*<<< orphan*/  isc; TYPE_1__ schib; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCWCHAIN_LEN_MAX ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFIO_CCW_ISC ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFIO_CCW_STATE_NOT_OPER ; 
 int /*<<< orphan*/  VFIO_CCW_STATE_STANDBY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct subchannel*) ; 
 int FUNC4 (struct subchannel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct vfio_ccw_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct vfio_ccw_private* FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct vfio_ccw_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int) ; 
 struct vfio_ccw_private* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfio_ccw_cmd_region ; 
 int /*<<< orphan*/  vfio_ccw_io_region ; 
 int FUNC16 (struct subchannel*) ; 
 int /*<<< orphan*/  vfio_ccw_sch_io_todo ; 

__attribute__((used)) static int FUNC17(struct subchannel *sch)
{
	struct pmcw *pmcw = &sch->schib.pmcw;
	struct vfio_ccw_private *private;
	int ret = -ENOMEM;

	if (pmcw->qf) {
		FUNC7(&sch->dev, "vfio: ccw: does not support QDIO: %s\n",
			 FUNC5(&sch->dev));
		return -ENODEV;
	}

	private = FUNC12(sizeof(*private), GFP_KERNEL | GFP_DMA);
	if (!private)
		return -ENOMEM;

	private->cp.guest_cp = FUNC8(CCWCHAIN_LEN_MAX, sizeof(struct ccw1),
				       GFP_KERNEL);
	if (!private->cp.guest_cp)
		goto out_free;

	private->io_region = FUNC11(vfio_ccw_io_region,
					       GFP_KERNEL | GFP_DMA);
	if (!private->io_region)
		goto out_free;

	private->cmd_region = FUNC11(vfio_ccw_cmd_region,
						GFP_KERNEL | GFP_DMA);
	if (!private->cmd_region)
		goto out_free;

	private->sch = sch;
	FUNC6(&sch->dev, private);
	FUNC13(&private->io_mutex);

	FUNC14(sch->lock);
	private->state = VFIO_CCW_STATE_NOT_OPER;
	sch->isc = VFIO_CCW_ISC;
	ret = FUNC4(sch, (u32)(unsigned long)sch);
	FUNC15(sch->lock);
	if (ret)
		goto out_free;

	FUNC0(&private->io_work, vfio_ccw_sch_io_todo);
	FUNC2(&private->avail, 1);
	private->state = VFIO_CCW_STATE_STANDBY;

	ret = FUNC16(sch);
	if (ret)
		goto out_disable;

	FUNC1(4, "bound to subchannel %x.%x.%04x\n",
			   sch->schid.cssid, sch->schid.ssid,
			   sch->schid.sch_no);
	return 0;

out_disable:
	FUNC3(sch);
out_free:
	FUNC6(&sch->dev, NULL);
	if (private->cmd_region)
		FUNC10(vfio_ccw_cmd_region, private->cmd_region);
	if (private->io_region)
		FUNC10(vfio_ccw_io_region, private->io_region);
	FUNC9(private->cp.guest_cp);
	FUNC9(private);
	return ret;
}