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
struct nvme_ctrl {TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_address ) (struct nvme_ctrl*,char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct nvme_ctrl* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_ctrl*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					 struct device_attribute *attr,
					 char *buf)
{
	struct nvme_ctrl *ctrl = FUNC0(dev);

	return ctrl->ops->get_address(ctrl, buf, PAGE_SIZE);
}