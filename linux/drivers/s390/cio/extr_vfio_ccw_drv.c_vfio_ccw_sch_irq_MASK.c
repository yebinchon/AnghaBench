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
struct vfio_ccw_private {int dummy; } ;
struct subchannel {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQIO_CIO ; 
 int /*<<< orphan*/  VFIO_CCW_EVENT_INTERRUPT ; 
 struct vfio_ccw_private* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfio_ccw_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct subchannel *sch)
{
	struct vfio_ccw_private *private = FUNC0(&sch->dev);

	FUNC1(IRQIO_CIO);
	FUNC2(private, VFIO_CCW_EVENT_INTERRUPT);
}