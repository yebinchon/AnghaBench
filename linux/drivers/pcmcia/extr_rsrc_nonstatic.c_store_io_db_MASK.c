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
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int ADD_MANAGED_RESOURCE ; 
 int EINVAL ; 
 unsigned int REMOVE_MANAGED_RESOURCE ; 
 int FUNC0 (struct pcmcia_socket*,unsigned int,unsigned long,unsigned long) ; 
 struct pcmcia_socket* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,char*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			   struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct pcmcia_socket *s = FUNC1(dev);
	unsigned long start_addr, end_addr;
	unsigned int add = ADD_MANAGED_RESOURCE;
	ssize_t ret = 0;

	ret = FUNC4(buf, "+ 0x%lx - 0x%lx", &start_addr, &end_addr);
	if (ret != 2) {
		ret = FUNC4(buf, "- 0x%lx - 0x%lx", &start_addr, &end_addr);
		add = REMOVE_MANAGED_RESOURCE;
		if (ret != 2) {
			ret = FUNC4(buf, "0x%lx - 0x%lx", &start_addr,
				&end_addr);
			add = ADD_MANAGED_RESOURCE;
			if (ret != 2)
				return -EINVAL;
		}
	}
	if (end_addr < start_addr)
		return -EINVAL;

	FUNC2(&s->ops_mutex);
	ret = FUNC0(s, add, start_addr, end_addr);
	FUNC3(&s->ops_mutex);

	return ret ? ret : count;
}