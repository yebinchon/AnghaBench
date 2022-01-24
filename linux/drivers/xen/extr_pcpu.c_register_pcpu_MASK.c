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
struct device {int /*<<< orphan*/  groups; int /*<<< orphan*/  (* release ) (struct device*) ;int /*<<< orphan*/  id; int /*<<< orphan*/ * bus; } ;
struct pcpu {int /*<<< orphan*/  cpu_id; struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  pcpu_dev_groups ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  xen_pcpu_subsys ; 

__attribute__((used)) static int FUNC2(struct pcpu *pcpu)
{
	struct device *dev;
	int err = -EINVAL;

	if (!pcpu)
		return err;

	dev = &pcpu->dev;
	dev->bus = &xen_pcpu_subsys;
	dev->id = pcpu->cpu_id;
	dev->release = pcpu_release;
	dev->groups = pcpu_dev_groups;

	err = FUNC0(dev);
	if (err) {
		FUNC1(dev);
		return err;
	}

	return 0;
}