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
struct isci_remote_device {int dummy; } ;
struct isci_host {int /*<<< orphan*/  scic_lock; } ;
struct domain_device {int /*<<< orphan*/  lldd_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 struct isci_host* FUNC0 (struct domain_device*) ; 
 struct isci_remote_device* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_remote_device*) ; 
 int FUNC3 (struct isci_host*,struct domain_device*,struct isci_remote_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct domain_device *dev)
{
	struct isci_host *ihost = FUNC0(dev);
	struct isci_remote_device *idev;
	unsigned long flags;
	int ret;

	FUNC4(&ihost->scic_lock, flags);
	idev = FUNC1(dev->lldd_dev);
	FUNC5(&ihost->scic_lock, flags);

	if (!idev) {
		/* XXX: need to cleanup any ireqs targeting this
		 * domain_device
		 */
		ret = -ENODEV;
		goto out;
	}

	ret = FUNC3(ihost, dev, idev);
 out:
	FUNC2(idev);
	return ret;
}