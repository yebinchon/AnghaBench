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
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	int err = 0;

	FUNC0(dev, "scsi_runtime_resume\n");
	if (FUNC1(dev))
		err = FUNC2(dev);

	/* Insert hooks here for targets, hosts, and transport classes */

	return err;
}