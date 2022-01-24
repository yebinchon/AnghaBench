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
struct kp2000_device {scalar_t__ sysinfo_regs_base; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ REG_CPLD_CONFIG ; 
 struct kp2000_device* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC2 (long,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct kp2000_device *pcard = FUNC0(dev);
	long wr_val;
	int rv;

	rv = FUNC1(buf, 0, &wr_val);
	if (rv < 0)
		return rv;
	if (wr_val > 7)
		return -EINVAL;

	wr_val = wr_val << 8;
	wr_val |= 0x1; // Set the "Configure Go" bit
	FUNC2(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
	return count;
}