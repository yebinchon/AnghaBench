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
struct ufs_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t EOPNOTSUPP ; 
 unsigned int UFSHCI_AHIBERN8_MAX ; 
 struct ufs_hba* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ufs_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct ufs_hba *hba = FUNC0(dev);
	unsigned int timer;

	if (!FUNC3(hba))
		return -EOPNOTSUPP;

	if (FUNC1(buf, 0, &timer))
		return -EINVAL;

	if (timer > UFSHCI_AHIBERN8_MAX)
		return -EINVAL;

	FUNC2(hba, FUNC4(timer));

	return count;
}