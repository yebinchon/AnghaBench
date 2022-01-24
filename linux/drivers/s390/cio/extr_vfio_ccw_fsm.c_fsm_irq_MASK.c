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
struct vfio_ccw_private {scalar_t__ completion; int /*<<< orphan*/  io_work; int /*<<< orphan*/  irb; TYPE_1__* sch; } ;
struct irb {int dummy; } ;
typedef  enum vfio_ccw_event { ____Placeholder_vfio_ccw_event } vfio_ccw_event ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  cio_irb ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct irb*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct irb* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfio_ccw_work_q ; 

__attribute__((used)) static void FUNC6(struct vfio_ccw_private *private,
		    enum vfio_ccw_event event)
{
	struct irb *irb = FUNC5(&cio_irb);

	FUNC0(6, "IRQ");
	FUNC0(6, FUNC2(&private->sch->dev));

	FUNC3(&private->irb, irb, sizeof(*irb));

	FUNC4(vfio_ccw_work_q, &private->io_work);

	if (private->completion)
		FUNC1(private->completion);
}