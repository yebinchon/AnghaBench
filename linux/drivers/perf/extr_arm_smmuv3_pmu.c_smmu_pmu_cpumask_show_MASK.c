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
struct smmu_pmu {int /*<<< orphan*/  on_cpu; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct smmu_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				     struct device_attribute *attr,
				     char *buf)
{
	struct smmu_pmu *smmu_pmu = FUNC3(FUNC2(dev));

	return FUNC0(true, buf, FUNC1(smmu_pmu->on_cpu));
}