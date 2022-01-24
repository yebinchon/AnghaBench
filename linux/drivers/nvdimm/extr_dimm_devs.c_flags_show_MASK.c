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
struct nvdimm {int /*<<< orphan*/  flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  NDD_ALIASING ; 
 int /*<<< orphan*/  NDD_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nvdimm* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct nvdimm *nvdimm = FUNC2(dev);

	return FUNC0(buf, "%s%s\n",
			FUNC1(NDD_ALIASING, &nvdimm->flags) ? "alias " : "",
			FUNC1(NDD_LOCKED, &nvdimm->flags) ? "lock " : "");
}