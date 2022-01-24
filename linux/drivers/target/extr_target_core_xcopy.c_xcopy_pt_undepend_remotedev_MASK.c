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
struct xcopy_op {scalar_t__ op_origin; struct se_device* src_dev; struct se_device* dst_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  cg_item; } ;
struct se_device {TYPE_1__ dev_group; } ;

/* Variables and functions */
 scalar_t__ XCOL_SOURCE_RECV_OP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct se_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct xcopy_op *xop)
{
	struct se_device *remote_dev;

	if (xop->op_origin == XCOL_SOURCE_RECV_OP)
		remote_dev = xop->dst_dev;
	else
		remote_dev = xop->src_dev;

	FUNC0("Calling configfs_undepend_item for"
		  " remote_dev: %p remote_dev->dev_group: %p\n",
		  remote_dev, &remote_dev->dev_group.cg_item);

	FUNC1(&remote_dev->dev_group.cg_item);
}