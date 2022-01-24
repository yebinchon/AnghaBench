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

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  simpad_pcmcia_ops ; 

int FUNC2(struct device *dev)
{
	int ret = -ENODEV;

	if (FUNC0())
		ret = FUNC1(dev, &simpad_pcmcia_ops, 1, 1);

	return ret;
}