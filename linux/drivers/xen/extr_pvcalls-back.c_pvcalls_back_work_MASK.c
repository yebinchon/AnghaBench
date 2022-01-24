#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xenbus_device {int dummy; } ;
struct xen_pvcalls_request {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  req_cons; } ;
struct pvcalls_fedata {TYPE_1__ ring; int /*<<< orphan*/  irq; struct xenbus_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct xen_pvcalls_request*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xenbus_device*,struct xen_pvcalls_request*) ; 

__attribute__((used)) static void FUNC6(struct pvcalls_fedata *fedata)
{
	int notify, notify_all = 0, more = 1;
	struct xen_pvcalls_request req;
	struct xenbus_device *dev = fedata->dev;

	while (more) {
		while (FUNC2(&fedata->ring)) {
			FUNC0(&fedata->ring,
					  fedata->ring.req_cons++,
					  &req);

			if (!FUNC5(dev, &req)) {
				FUNC3(
					&fedata->ring, notify);
				notify_all += notify;
			}
		}

		if (notify_all) {
			FUNC4(fedata->irq);
			notify_all = 0;
		}

		FUNC1(&fedata->ring, more);
	}
}