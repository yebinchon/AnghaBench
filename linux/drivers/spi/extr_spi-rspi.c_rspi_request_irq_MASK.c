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
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 char* FUNC1 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (struct device*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,void*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int irq,
			    irq_handler_t handler, const char *suffix,
			    void *dev_id)
{
	const char *name = FUNC1(dev, GFP_KERNEL, "%s:%s",
					  FUNC0(dev), suffix);
	if (!name)
		return -ENOMEM;

	return FUNC2(dev, irq, handler, 0, name, dev_id);
}