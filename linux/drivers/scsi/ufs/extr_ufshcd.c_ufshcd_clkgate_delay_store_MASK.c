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
struct TYPE_3__ {unsigned long delay_ms; } ;
struct ufs_hba {TYPE_2__* host; TYPE_1__ clk_gating; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 size_t EINVAL ; 
 struct ufs_hba* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct ufs_hba *hba = FUNC0(dev);
	unsigned long flags, value;

	if (FUNC1(buf, 0, &value))
		return -EINVAL;

	FUNC2(hba->host->host_lock, flags);
	hba->clk_gating.delay_ms = value;
	FUNC3(hba->host->host_lock, flags);
	return count;
}