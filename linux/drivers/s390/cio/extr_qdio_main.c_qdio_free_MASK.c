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
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct qdio_irq {int /*<<< orphan*/  setup_mutex; int /*<<< orphan*/ * debug_area; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_2__ {struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qdio_irq*,char*) ; 
 int /*<<< orphan*/  DBF_ERR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (struct ccw_device*,struct subchannel_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qdio_irq*) ; 

int FUNC6(struct ccw_device *cdev)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;
	struct subchannel_id schid;

	if (!irq_ptr)
		return -ENODEV;

	FUNC2(cdev, &schid);
	FUNC1("qfree:%4x", schid.sch_no);
	FUNC0(DBF_ERR, irq_ptr, "dbf abandoned");
	FUNC3(&irq_ptr->setup_mutex);

	irq_ptr->debug_area = NULL;
	cdev->private->qdio_data = NULL;
	FUNC4(&irq_ptr->setup_mutex);

	FUNC5(irq_ptr);
	return 0;
}