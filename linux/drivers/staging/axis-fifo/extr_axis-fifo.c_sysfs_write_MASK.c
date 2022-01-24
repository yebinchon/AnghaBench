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
struct device {int dummy; } ;
struct axis_fifo {scalar_t__ base_addr; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct axis_fifo* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, const char *buf,
			   size_t count, unsigned int addr_offset)
{
	struct axis_fifo *fifo = FUNC0(dev);
	unsigned long tmp;
	int rc;

	rc = FUNC2(buf, 0, &tmp);
	if (rc < 0)
		return rc;

	FUNC1(tmp, fifo->base_addr + addr_offset);

	return count;
}