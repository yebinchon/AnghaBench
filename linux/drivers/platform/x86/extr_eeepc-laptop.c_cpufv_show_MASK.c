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
struct eeepc_laptop {int dummy; } ;
struct eeepc_cpufv {int num; int cur; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct eeepc_laptop* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct eeepc_laptop*,struct eeepc_cpufv*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			  struct device_attribute *attr,
			  char *buf)
{
	struct eeepc_laptop *eeepc = FUNC0(dev);
	struct eeepc_cpufv c;

	if (FUNC1(eeepc, &c))
		return -ENODEV;
	return FUNC2(buf, "%#x\n", (c.num << 8) | c.cur);
}