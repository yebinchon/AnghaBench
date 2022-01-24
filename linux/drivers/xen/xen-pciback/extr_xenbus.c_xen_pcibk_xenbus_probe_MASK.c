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
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; } ;
struct xen_pcibk_device {int be_watching; int /*<<< orphan*/  be_watch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  XenbusStateInitWait ; 
 struct xen_pcibk_device* FUNC0 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xenbus_device*,int,char*) ; 
 int FUNC3 (struct xenbus_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct xenbus_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 

__attribute__((used)) static int FUNC5(struct xenbus_device *dev,
				const struct xenbus_device_id *id)
{
	int err = 0;
	struct xen_pcibk_device *pdev = FUNC0(dev);

	if (pdev == NULL) {
		err = -ENOMEM;
		FUNC2(dev, err,
				 "Error allocating xen_pcibk_device struct");
		goto out;
	}

	/* wait for xend to configure us */
	err = FUNC3(dev, XenbusStateInitWait);
	if (err)
		goto out;

	/* watch the backend node for backend configuration information */
	err = FUNC4(dev, dev->nodename, &pdev->be_watch,
				xen_pcibk_be_watch);
	if (err)
		goto out;

	pdev->be_watching = 1;

	/* We need to force a call to our callback here in case
	 * xend already configured us!
	 */
	FUNC1(&pdev->be_watch, NULL, NULL);

out:
	return err;
}