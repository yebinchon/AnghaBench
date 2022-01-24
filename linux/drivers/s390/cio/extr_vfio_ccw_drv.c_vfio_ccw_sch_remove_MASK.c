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
struct TYPE_3__ {struct vfio_ccw_private* guest_cp; } ;
struct vfio_ccw_private {TYPE_1__ cp; int /*<<< orphan*/  io_region; int /*<<< orphan*/  cmd_region; } ;
struct TYPE_4__ {int /*<<< orphan*/  sch_no; int /*<<< orphan*/  ssid; int /*<<< orphan*/  cssid; } ;
struct subchannel {TYPE_2__ schid; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vfio_ccw_private* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vfio_ccw_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vfio_ccw_cmd_region ; 
 int /*<<< orphan*/  vfio_ccw_io_region ; 
 int /*<<< orphan*/  FUNC5 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC6 (struct subchannel*) ; 

__attribute__((used)) static int FUNC7(struct subchannel *sch)
{
	struct vfio_ccw_private *private = FUNC1(&sch->dev);

	FUNC6(sch);

	FUNC5(sch);

	FUNC2(&sch->dev, NULL);

	FUNC4(vfio_ccw_cmd_region, private->cmd_region);
	FUNC4(vfio_ccw_io_region, private->io_region);
	FUNC3(private->cp.guest_cp);
	FUNC3(private);

	FUNC0(4, "unbound from subchannel %x.%x.%04x\n",
			   sch->schid.cssid, sch->schid.ssid,
			   sch->schid.sch_no);
	return 0;
}