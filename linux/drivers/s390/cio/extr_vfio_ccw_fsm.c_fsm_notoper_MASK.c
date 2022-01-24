#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfio_ccw_private {int /*<<< orphan*/  state; struct subchannel* sch; } ;
struct subchannel {int /*<<< orphan*/  dev; } ;
typedef  enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;

/* Variables and functions */
 int /*<<< orphan*/  SCH_TODO_UNREG ; 
 int /*<<< orphan*/  VFIO_CCW_STATE_NOT_OPER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vfio_ccw_private *private,
			enum vfio_ccw_event event)
{
	struct subchannel *sch = private->sch;

	FUNC0(2, "notoper");
	FUNC0(2, FUNC2(&sch->dev));

	/*
	 * TODO:
	 * Probably we should send the machine check to the guest.
	 */
	FUNC1(sch, SCH_TODO_UNREG);
	private->state = VFIO_CCW_STATE_NOT_OPER;
}