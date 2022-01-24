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
struct qlogicpti {int scsi_id; TYPE_2__* qhost; struct platform_device* op; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_4__ {int this_id; int max_sectors; } ;

/* Variables and functions */
 void* FUNC0 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(struct qlogicpti *qpti)
{
	struct platform_device *op = qpti->op;
	struct device_node *dp;

	dp = op->dev.of_node;

	qpti->scsi_id = FUNC0(dp, "initiator-id", -1);
	if (qpti->scsi_id == -1)
		qpti->scsi_id = FUNC0(dp, "scsi-initiator-id",
						      -1);
	if (qpti->scsi_id == -1)
		qpti->scsi_id =
			FUNC0(dp->parent,
					      "scsi-initiator-id", 7);
	qpti->qhost->this_id = qpti->scsi_id;
	qpti->qhost->max_sectors = 64;

	FUNC1("SCSI ID %d ", qpti->scsi_id);
}