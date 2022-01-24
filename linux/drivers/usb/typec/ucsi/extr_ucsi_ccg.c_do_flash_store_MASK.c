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
struct ucsi_ccg {int fw_build; int /*<<< orphan*/  work; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct ucsi_ccg* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr,
			      const char *buf, size_t n)
{
	struct ucsi_ccg *uc = FUNC1(FUNC4(dev));
	bool flash;

	if (FUNC2(buf, &flash))
		return -EINVAL;

	if (!flash)
		return n;

	if (uc->fw_build == 0x0) {
		FUNC0(dev, "fail to flash FW due to missing FW build info\n");
		return -EINVAL;
	}

	FUNC3(&uc->work);
	return n;
}