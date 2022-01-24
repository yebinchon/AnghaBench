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
struct nvme_dev {int /*<<< orphan*/  cmbsz; int /*<<< orphan*/  cmbloc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nvme_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			     struct device_attribute *attr,
			     char *buf)
{
	struct nvme_dev *ndev = FUNC2(FUNC0(dev));

	return FUNC1(buf, PAGE_SIZE, "cmbloc : x%08x\ncmbsz  : x%08x\n",
		       ndev->cmbloc, ndev->cmbsz);
}