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
struct subchannel_id {int /*<<< orphan*/  sch_no; } ;
struct qdio_ssqd_desc {int dummy; } ;
struct ccw_device {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,struct subchannel_id*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct subchannel_id*,struct qdio_ssqd_desc*) ; 

int FUNC3(struct ccw_device *cdev,
		       struct qdio_ssqd_desc *data)
{
	struct subchannel_id schid;

	if (!cdev || !cdev->private)
		return -EINVAL;

	FUNC1(cdev, &schid);
	FUNC0("get ssqd:%4x", schid.sch_no);
	return FUNC2(NULL, &schid, data);
}